# typed: strong

module Privy
  module Models
    class IntentAuthorizationUserMember < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::IntentAuthorizationUserMember, Privy::Internal::AnyHash)
        end

      # Unix timestamp when this member signed, or null if not yet signed.
      sig { returns(T.nilable(Float)) }
      attr_accessor :signed_at

      sig { returns(Privy::IntentAuthorizationUserMember::Type::TaggedSymbol) }
      attr_accessor :type

      # User ID of the key quorum member
      sig { returns(String) }
      attr_accessor :user_id

      # A user member of an intent authorization quorum.
      sig do
        params(
          signed_at: T.nilable(Float),
          type: Privy::IntentAuthorizationUserMember::Type::OrSymbol,
          user_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Unix timestamp when this member signed, or null if not yet signed.
        signed_at:,
        type:,
        # User ID of the key quorum member
        user_id:
      )
      end

      sig do
        override.returns(
          {
            signed_at: T.nilable(Float),
            type: Privy::IntentAuthorizationUserMember::Type::TaggedSymbol,
            user_id: String
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::IntentAuthorizationUserMember::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        USER =
          T.let(:user, Privy::IntentAuthorizationUserMember::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::IntentAuthorizationUserMember::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
