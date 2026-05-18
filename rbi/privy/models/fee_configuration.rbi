# typed: strong

module Privy
  module Models
    class FeeConfiguration < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::FeeConfiguration, Privy::Internal::AnyHash)
        end

      # Discriminator: total fee specified in BPS.
      sig { returns(Privy::FeeConfiguration::Type::OrSymbol) }
      attr_accessor :type

      # Total fee in basis points (1 bps = 0.01%).
      sig { returns(Integer) }
      attr_accessor :value

      # Total fees assessed on a transfer, in BPS
      sig do
        params(
          type: Privy::FeeConfiguration::Type::OrSymbol,
          value: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # Discriminator: total fee specified in BPS.
        type:,
        # Total fee in basis points (1 bps = 0.01%).
        value:
      )
      end

      sig do
        override.returns(
          { type: Privy::FeeConfiguration::Type::OrSymbol, value: Integer }
        )
      end
      def to_hash
      end

      # Discriminator: total fee specified in BPS.
      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::FeeConfiguration::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TOTAL_FEE_BPS =
          T.let(:total_fee_bps, Privy::FeeConfiguration::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::FeeConfiguration::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
