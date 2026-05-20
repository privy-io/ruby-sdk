# typed: strong

module Privy
  module Models
    class DeveloperFee < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::DeveloperFee, Privy::Internal::AnyHash) }

      # Amount in USD (in decimals).
      sig { returns(String) }
      attr_accessor :amount

      sig { returns(Privy::DeveloperFee::Type::TaggedSymbol) }
      attr_accessor :type

      sig { returns(T.nilable(String)) }
      attr_reader :recipient

      sig { params(recipient: String).void }
      attr_writer :recipient

      # Estimated fee paid to the developer.
      sig do
        params(
          amount: String,
          type: Privy::DeveloperFee::Type::OrSymbol,
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
            type: Privy::DeveloperFee::Type::TaggedSymbol,
            recipient: String
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Privy::DeveloperFee::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DEVELOPER = T.let(:developer, Privy::DeveloperFee::Type::TaggedSymbol)

        sig do
          override.returns(T::Array[Privy::DeveloperFee::Type::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
