# typed: strong

module Privy
  module Models
    class BaseIntentResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::BaseIntentResponse, Privy::Internal::AnyHash)
        end

      # Detailed authorization information including key quorum members, thresholds, and
      # signature status
      sig { returns(T::Array[Privy::IntentAuthorization]) }
      attr_accessor :authorization_details

      # Unix timestamp when the intent was created
      sig { returns(Float) }
      attr_accessor :created_at

      # Display name of the user who created the intent
      sig { returns(String) }
      attr_accessor :created_by_display_name

      # Whether this intent has a custom expiry time set by the client. If false, the
      # intent expires after a default duration.
      sig { returns(T::Boolean) }
      attr_accessor :custom_expiry

      # Unix timestamp when the intent expires
      sig { returns(Float) }
      attr_accessor :expires_at

      # Unique ID for the intent
      sig { returns(String) }
      attr_accessor :intent_id

      # ID of the resource being modified (wallet_id, policy_id, etc)
      sig { returns(String) }
      attr_accessor :resource_id

      # Current status of an intent.
      sig { returns(Privy::IntentStatus::TaggedSymbol) }
      attr_accessor :status

      # ID of the user who created the intent. If undefined, the intent was created
      # using the app secret
      sig { returns(T.nilable(String)) }
      attr_reader :created_by_id

      sig { params(created_by_id: String).void }
      attr_writer :created_by_id

      # Human-readable reason for dismissal, present when status is 'dismissed'
      sig { returns(T.nilable(String)) }
      attr_reader :dismissal_reason

      sig { params(dismissal_reason: String).void }
      attr_writer :dismissal_reason

      # Unix timestamp when the intent was dismissed, present when status is 'dismissed'
      sig { returns(T.nilable(Float)) }
      attr_reader :dismissed_at

      sig { params(dismissed_at: Float).void }
      attr_writer :dismissed_at

      # Unix timestamp when the intent was rejected, present when status is 'rejected'
      sig { returns(T.nilable(Float)) }
      attr_reader :rejected_at

      sig { params(rejected_at: Float).void }
      attr_writer :rejected_at

      # Common fields shared by all intent response types.
      sig do
        params(
          authorization_details: T::Array[Privy::IntentAuthorization::OrHash],
          created_at: Float,
          created_by_display_name: String,
          custom_expiry: T::Boolean,
          expires_at: Float,
          intent_id: String,
          resource_id: String,
          status: Privy::IntentStatus::OrSymbol,
          created_by_id: String,
          dismissal_reason: String,
          dismissed_at: Float,
          rejected_at: Float
        ).returns(T.attached_class)
      end
      def self.new(
        # Detailed authorization information including key quorum members, thresholds, and
        # signature status
        authorization_details:,
        # Unix timestamp when the intent was created
        created_at:,
        # Display name of the user who created the intent
        created_by_display_name:,
        # Whether this intent has a custom expiry time set by the client. If false, the
        # intent expires after a default duration.
        custom_expiry:,
        # Unix timestamp when the intent expires
        expires_at:,
        # Unique ID for the intent
        intent_id:,
        # ID of the resource being modified (wallet_id, policy_id, etc)
        resource_id:,
        # Current status of an intent.
        status:,
        # ID of the user who created the intent. If undefined, the intent was created
        # using the app secret
        created_by_id: nil,
        # Human-readable reason for dismissal, present when status is 'dismissed'
        dismissal_reason: nil,
        # Unix timestamp when the intent was dismissed, present when status is 'dismissed'
        dismissed_at: nil,
        # Unix timestamp when the intent was rejected, present when status is 'rejected'
        rejected_at: nil
      )
      end

      sig do
        override.returns(
          {
            authorization_details: T::Array[Privy::IntentAuthorization],
            created_at: Float,
            created_by_display_name: String,
            custom_expiry: T::Boolean,
            expires_at: Float,
            intent_id: String,
            resource_id: String,
            status: Privy::IntentStatus::TaggedSymbol,
            created_by_id: String,
            dismissal_reason: String,
            dismissed_at: Float,
            rejected_at: Float
          }
        )
      end
      def to_hash
      end
    end
  end
end
