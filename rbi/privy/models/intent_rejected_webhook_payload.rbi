# typed: strong

module Privy
  module Models
    class IntentRejectedWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::IntentRejectedWebhookPayload, Privy::Internal::AnyHash)
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

      # Unix timestamp when the intent was rejected.
      sig { returns(Float) }
      attr_accessor :rejected_at

      # The current status of the intent.
      sig { returns(String) }
      attr_accessor :status

      # The type of webhook event.
      sig { returns(Privy::IntentRejectedWebhookPayload::Type::TaggedSymbol) }
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

      # Payload for the intent.rejected webhook event.
      sig do
        params(
          created_at: Float,
          expires_at: Float,
          intent_id: String,
          intent_type: Privy::IntentType::OrSymbol,
          rejected_at: Float,
          status: String,
          type: Privy::IntentRejectedWebhookPayload::Type::OrSymbol,
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
        # Unix timestamp when the intent was rejected.
        rejected_at:,
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
            created_at: Float,
            expires_at: Float,
            intent_id: String,
            intent_type: Privy::IntentType::TaggedSymbol,
            rejected_at: Float,
            status: String,
            type: Privy::IntentRejectedWebhookPayload::Type::TaggedSymbol,
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
            T.all(Symbol, Privy::IntentRejectedWebhookPayload::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INTENT_REJECTED =
          T.let(
            :"intent.rejected",
            Privy::IntentRejectedWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::IntentRejectedWebhookPayload::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
