# frozen_string_literal: true

module Privy
  module Models
    class BaseIntentResponse < Privy::Internal::Type::BaseModel
      # @!attribute authorization_details
      #   Detailed authorization information including key quorum members, thresholds, and
      #   signature status
      #
      #   @return [Array<Privy::Models::IntentAuthorization>]
      required :authorization_details, -> { Privy::Internal::Type::ArrayOf[Privy::IntentAuthorization] }

      # @!attribute created_at
      #   Unix timestamp when the intent was created
      #
      #   @return [Float]
      required :created_at, Float

      # @!attribute created_by_display_name
      #   Display name of the user who created the intent
      #
      #   @return [String]
      required :created_by_display_name, String

      # @!attribute custom_expiry
      #   Whether this intent has a custom expiry time set by the client. If false, the
      #   intent expires after a default duration.
      #
      #   @return [Boolean]
      required :custom_expiry, Privy::Internal::Type::Boolean

      # @!attribute expires_at
      #   Unix timestamp when the intent expires
      #
      #   @return [Float]
      required :expires_at, Float

      # @!attribute intent_id
      #   Unique ID for the intent
      #
      #   @return [String]
      required :intent_id, String

      # @!attribute resource_id
      #   ID of the resource being modified (wallet_id, policy_id, etc)
      #
      #   @return [String]
      required :resource_id, String

      # @!attribute status
      #   Current status of an intent.
      #
      #   @return [Symbol, Privy::Models::IntentStatus]
      required :status, enum: -> { Privy::IntentStatus }

      # @!attribute created_by_id
      #   ID of the user who created the intent. If undefined, the intent was created
      #   using the app secret
      #
      #   @return [String, nil]
      optional :created_by_id, String

      # @!attribute dismissal_reason
      #   Human-readable reason for dismissal, present when status is 'dismissed'
      #
      #   @return [String, nil]
      optional :dismissal_reason, String

      # @!attribute dismissed_at
      #   Unix timestamp when the intent was dismissed, present when status is 'dismissed'
      #
      #   @return [Float, nil]
      optional :dismissed_at, Float

      # @!attribute rejected_at
      #   Unix timestamp when the intent was rejected, present when status is 'rejected'
      #
      #   @return [Float, nil]
      optional :rejected_at, Float

      # @!method initialize(authorization_details:, created_at:, created_by_display_name:, custom_expiry:, expires_at:, intent_id:, resource_id:, status:, created_by_id: nil, dismissal_reason: nil, dismissed_at: nil, rejected_at: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::BaseIntentResponse} for more details.
      #
      #   Common fields shared by all intent response types.
      #
      #   @param authorization_details [Array<Privy::Models::IntentAuthorization>] Detailed authorization information including key quorum members, thresholds, and
      #
      #   @param created_at [Float] Unix timestamp when the intent was created
      #
      #   @param created_by_display_name [String] Display name of the user who created the intent
      #
      #   @param custom_expiry [Boolean] Whether this intent has a custom expiry time set by the client. If false, the in
      #
      #   @param expires_at [Float] Unix timestamp when the intent expires
      #
      #   @param intent_id [String] Unique ID for the intent
      #
      #   @param resource_id [String] ID of the resource being modified (wallet_id, policy_id, etc)
      #
      #   @param status [Symbol, Privy::Models::IntentStatus] Current status of an intent.
      #
      #   @param created_by_id [String] ID of the user who created the intent. If undefined, the intent was created usin
      #
      #   @param dismissal_reason [String] Human-readable reason for dismissal, present when status is 'dismissed'
      #
      #   @param dismissed_at [Float] Unix timestamp when the intent was dismissed, present when status is 'dismissed'
      #
      #   @param rejected_at [Float] Unix timestamp when the intent was rejected, present when status is 'rejected'
    end
  end
end
