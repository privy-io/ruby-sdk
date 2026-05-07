# typed: strong

module Privy
  module Models
    class UserCreatedWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::UserCreatedWebhookPayload, Privy::Internal::AnyHash)
        end

      # The type of webhook event.
      sig { returns(Privy::UserCreatedWebhookPayload::Type::TaggedSymbol) }
      attr_accessor :type

      # A Privy user object.
      sig { returns(Privy::User) }
      attr_reader :user

      sig { params(user: Privy::User::OrHash).void }
      attr_writer :user

      # Payload for the user.created webhook event.
      sig do
        params(
          type: Privy::UserCreatedWebhookPayload::Type::OrSymbol,
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
            type: Privy::UserCreatedWebhookPayload::Type::TaggedSymbol,
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
          T.type_alias { T.all(Symbol, Privy::UserCreatedWebhookPayload::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        USER_CREATED =
          T.let(
            :"user.created",
            Privy::UserCreatedWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::UserCreatedWebhookPayload::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
