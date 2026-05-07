# typed: strong

module Privy
  module Models
    class IntentCreatedWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::IntentCreatedWebhookPayload, Privy::Internal::AnyHash)
        end

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

      # The current status of the intent.
      sig { returns(String) }
      attr_accessor :status

      # The type of webhook event.
      sig { returns(Privy::IntentCreatedWebhookPayload::Type::TaggedSymbol) }
      attr_accessor :type

      # Key quorums that can authorize this intent.
      sig { returns(T.nilable(T::Array[Privy::IntentAuthorization])) }
      attr_reader :authorization_details

      sig do
        params(
          authorization_details: T::Array[Privy::IntentAuthorization::OrHash]
        ).void
      end
      attr_writer :authorization_details

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

      # Payload for the intent.created webhook event.
      sig do
        params(
          created_at: Float,
          expires_at: Float,
          intent_id: String,
          intent_type: Privy::IntentType::OrSymbol,
          status: String,
          type: Privy::IntentCreatedWebhookPayload::Type::OrSymbol,
          authorization_details: T::Array[Privy::IntentAuthorization::OrHash],
          created_by_display_name: String,
          created_by_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Unix timestamp when the intent was created.
        created_at:,
        # Unix timestamp when the intent expires.
        expires_at:,
        # The unique ID of the intent.
        intent_id:,
        # Type of intent.
        intent_type:,
        # The current status of the intent.
        status:,
        # The type of webhook event.
        type:,
        # Key quorums that can authorize this intent.
        authorization_details: nil,
        # Display name of the user who created the intent.
        created_by_display_name: nil,
        # The ID of the user who created the intent.
        created_by_id: nil
      )
      end

      sig do
        override.returns(
          {
            created_at: Float,
            expires_at: Float,
            intent_id: String,
            intent_type: Privy::IntentType::TaggedSymbol,
            status: String,
            type: Privy::IntentCreatedWebhookPayload::Type::TaggedSymbol,
            authorization_details: T::Array[Privy::IntentAuthorization],
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
            T.all(Symbol, Privy::IntentCreatedWebhookPayload::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INTENT_CREATED =
          T.let(
            :"intent.created",
            Privy::IntentCreatedWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::IntentCreatedWebhookPayload::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
