# typed: strong

module Privy
  module Models
    class PrivyFee < Privy::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Privy::PrivyFee, Privy::Internal::AnyHash) }

      # Amount in USD (in decimals).
      sig { returns(String) }
      attr_accessor :amount

      sig { returns(Privy::PrivyFee::Type::TaggedSymbol) }
      attr_accessor :type

      sig { returns(T.nilable(String)) }
      attr_reader :recipient

      sig { params(recipient: String).void }
      attr_writer :recipient

      # Estimated fee paid to Privy.
      sig do
        params(
          amount: String,
          type: Privy::PrivyFee::Type::OrSymbol,
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
            type: Privy::PrivyFee::Type::TaggedSymbol,
            recipient: String
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Privy::PrivyFee::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PRIVY = T.let(:privy, Privy::PrivyFee::Type::TaggedSymbol)

        sig { override.returns(T::Array[Privy::PrivyFee::Type::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
