# typed: strong

module Privy
  module Models
    class IntentAuthorizationKeyMember < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::IntentAuthorizationKeyMember, Privy::Internal::AnyHash)
        end

      # Public key of the key quorum member
      sig { returns(String) }
      attr_accessor :public_key

      # Unix timestamp when this member signed, or null if not yet signed.
      sig { returns(T.nilable(Float)) }
      attr_accessor :signed_at

      sig { returns(Privy::IntentAuthorizationKeyMember::Type::TaggedSymbol) }
      attr_accessor :type

      # A key member of an intent authorization quorum.
      sig do
        params(
          public_key: String,
          signed_at: T.nilable(Float),
          type: Privy::IntentAuthorizationKeyMember::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Public key of the key quorum member
        public_key:,
        # Unix timestamp when this member signed, or null if not yet signed.
        signed_at:,
        type:
      )
      end

      sig do
        override.returns(
          {
            public_key: String,
            signed_at: T.nilable(Float),
            type: Privy::IntentAuthorizationKeyMember::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::IntentAuthorizationKeyMember::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        KEY =
          T.let(:key, Privy::IntentAuthorizationKeyMember::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::IntentAuthorizationKeyMember::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
