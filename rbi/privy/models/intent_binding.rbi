# typed: strong

module Privy
  module Models
    class IntentBinding < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::IntentBinding, Privy::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :intent_id

      sig { returns(Privy::IntentBinding::Type::OrSymbol) }
      attr_accessor :type

      # A binding that scopes a user signing key to a specific intent.
      sig do
        params(
          intent_id: String,
          type: Privy::IntentBinding::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(intent_id:, type:)
      end

      sig do
        override.returns(
          { intent_id: String, type: Privy::IntentBinding::Type::OrSymbol }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::IntentBinding::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INTENT = T.let(:intent, Privy::IntentBinding::Type::TaggedSymbol)

        sig do
          override.returns(T::Array[Privy::IntentBinding::Type::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
