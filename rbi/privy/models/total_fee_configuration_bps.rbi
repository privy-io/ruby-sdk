# typed: strong

module Privy
  module Models
    class TotalFeeConfigurationBps < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TotalFeeConfigurationBps, Privy::Internal::AnyHash)
        end

      # Discriminator: total fee specified in BPS.
      sig { returns(Privy::TotalFeeConfigurationBps::Type::OrSymbol) }
      attr_accessor :type

      # Total fee in basis points (1 bps = 0.01%).
      sig { returns(Integer) }
      attr_accessor :value

      # Total fees assessed on a transfer, in BPS
      sig do
        params(
          type: Privy::TotalFeeConfigurationBps::Type::OrSymbol,
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
          {
            type: Privy::TotalFeeConfigurationBps::Type::OrSymbol,
            value: Integer
          }
        )
      end
      def to_hash
      end

      # Discriminator: total fee specified in BPS.
      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::TotalFeeConfigurationBps::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TOTAL_FEE_BPS =
          T.let(
            :total_fee_bps,
            Privy::TotalFeeConfigurationBps::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::TotalFeeConfigurationBps::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
