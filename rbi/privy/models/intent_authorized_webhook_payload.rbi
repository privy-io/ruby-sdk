# typed: strong

module Privy
  module Models
    class IntentAuthorizedWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::IntentAuthorizedWebhookPayload, Privy::Internal::AnyHash)
        end

      # Unix timestamp when the authorization was recorded.
      sig { returns(Float) }
      attr_accessor :authorized_at

      # Unix timestamp when the intent was created.
      sig { returns(Float) }
      attr_accessor :created_at

      # Unix timestamp when the intent expires.
      sig { returns(Float) }
      attr_accessor :expires_at

      # The unique ID of the intent.
      sig { returns(String) }
      attr_accessor :intent_id

      # Type of intent.
      sig { returns(Privy::IntentType::TaggedSymbol) }
      attr_accessor :intent_type

      # A leaf member (user or key) of a nested key quorum in an intent authorization.
      sig { returns(Privy::IntentAuthorizationKeyQuorumMember::Variants) }
      attr_accessor :member

      # The current status of the intent.
      sig { returns(String) }
      attr_accessor :status

      # The type of webhook event.
      sig { returns(Privy::IntentAuthorizedWebhookPayload::Type::TaggedSymbol) }
      attr_accessor :type

      # Display name of the user who created the intent.
      sig { returns(T.nilable(String)) }
      attr_reader :created_by_display_name

      sig { params(created_by_display_name: String).void }
      attr_writer :created_by_display_name

      # The ID of the user who created the intent.
      sig { returns(T.nilable(String)) }
      attr_reader :created_by_id

      sig { params(created_by_id: String).void }
      attr_writer :created_by_id

      # Payload for the intent.authorized webhook event.
      sig do
        params(
          authorized_at: Float,
          created_at: Float,
          expires_at: Float,
          intent_id: String,
          intent_type: Privy::IntentType::OrSymbol,
          member:
            T.any(
              Privy::IntentAuthorizationKeyQuorumMember::UserMember::OrHash,
              Privy::IntentAuthorizationKeyQuorumMember::KeyMember::OrHash
            ),
          status: String,
          type: Privy::IntentAuthorizedWebhookPayload::Type::OrSymbol,
          created_by_display_name: String,
          created_by_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Unix timestamp when the authorization was recorded.
        authorized_at:,
        # Unix timestamp when the intent was created.
        created_at:,
        # Unix timestamp when the intent expires.
        expires_at:,
        # The unique ID of the intent.
        intent_id:,
        # Type of intent.
        intent_type:,
        # A leaf member (user or key) of a nested key quorum in an intent authorization.
        member:,
        # The current status of the intent.
        status:,
        # The type of webhook event.
        type:,
        # Display name of the user who created the intent.
        created_by_display_name: nil,
        # The ID of the user who created the intent.
        created_by_id: nil
      )
      end

      sig do
        override.returns(
          {
            authorized_at: Float,
            created_at: Float,
            expires_at: Float,
            intent_id: String,
            intent_type: Privy::IntentType::TaggedSymbol,
            member: Privy::IntentAuthorizationKeyQuorumMember::Variants,
            status: String,
            type: Privy::IntentAuthorizedWebhookPayload::Type::TaggedSymbol,
            created_by_display_name: String,
            created_by_id: String
          }
        )
      end
      def to_hash
      end

      # The type of webhook event.
      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::IntentAuthorizedWebhookPayload::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INTENT_AUTHORIZED =
          T.let(
            :"intent.authorized",
            Privy::IntentAuthorizedWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::IntentAuthorizedWebhookPayload::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
