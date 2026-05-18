# typed: strong

module Privy
  module Models
    class RelayerFee < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::RelayerFee, Privy::Internal::AnyHash) }

      # Amount in USD (in decimals).
      sig { returns(String) }
      attr_accessor :amount

      sig { returns(Privy::RelayerFee::Type::TaggedSymbol) }
      attr_accessor :type

      sig { returns(T.nilable(String)) }
      attr_reader :recipient

      sig { params(recipient: String).void }
      attr_writer :recipient

      # Estimated fee paid to the relayer.
      sig do
        params(
          amount: String,
          type: Privy::RelayerFee::Type::OrSymbol,
          recipient: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Amount in USD (in decimals).
        amount:,
        type:,
        recipient: nil
      )
      end

      sig do
        override.returns(
          {
            amount: String,
            type: Privy::RelayerFee::Type::TaggedSymbol,
            recipient: String
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Privy::RelayerFee::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RELAYER = T.let(:relayer, Privy::RelayerFee::Type::TaggedSymbol)

        sig do
          override.returns(T::Array[Privy::RelayerFee::Type::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
