# typed: strong

module Privy
  module Models
    class UserSigningKeyBinding < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::UserSigningKeyBinding, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :intent_id

      sig { returns(Privy::UserSigningKeyBinding::Type::OrSymbol) }
      attr_accessor :type

      # A binding that scopes a user signing key to a specific intent.
      sig do
        params(
          intent_id: String,
          type: Privy::UserSigningKeyBinding::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(intent_id:, type:)
      end

      sig do
        override.returns(
          {
            intent_id: String,
            type: Privy::UserSigningKeyBinding::Type::OrSymbol
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::UserSigningKeyBinding::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INTENT =
          T.let(:intent, Privy::UserSigningKeyBinding::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::UserSigningKeyBinding::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
