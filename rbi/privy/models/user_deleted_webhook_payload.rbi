# typed: strong

module Privy
  module Models
    class UserDeletedWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::UserDeletedWebhookPayload, Privy::Internal::AnyHash)
        end

      # The type of webhook event.
      sig { returns(Privy::UserDeletedWebhookPayload::Type::TaggedSymbol) }
      attr_accessor :type

      # A Privy user object.
      sig { returns(Privy::User) }
      attr_reader :user

      sig { params(user: Privy::User::OrHash).void }
      attr_writer :user

      # Payload for the user.deleted webhook event.
      sig do
        params(
          type: Privy::UserDeletedWebhookPayload::Type::OrSymbol,
          user: Privy::User::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The type of webhook event.
        type:,
        # A Privy user object.
        user:
      )
      end

      sig do
        override.returns(
          {
            type: Privy::UserDeletedWebhookPayload::Type::TaggedSymbol,
            user: Privy::User
          }
        )
      end
      def to_hash
      end

      # The type of webhook event.
      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::UserDeletedWebhookPayload::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        USER_DELETED =
          T.let(
            :"user.deleted",
            Privy::UserDeletedWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::UserDeletedWebhookPayload::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
