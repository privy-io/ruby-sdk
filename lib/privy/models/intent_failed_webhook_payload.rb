# frozen_string_literal: true

module Privy
  module Models
    class IntentFailedWebhookPayload < Privy::Internal::Type::BaseModel
      # @!attribute action_result
      #   Result of the failed intent execution.
      #
      #   @return [Privy::Models::BaseActionResult]
      required :action_result, -> { Privy::BaseActionResult }

      # @!attribute created_at
      #   Unix timestamp when the intent was created.
      #
      #   @return [Float]
      required :created_at, Float

      # @!attribute expires_at
      #   Unix timestamp when the intent expires.
      #
      #   @return [Float]
      required :expires_at, Float

      # @!attribute intent_id
      #   The unique ID of the intent.
      #
      #   @return [String]
      required :intent_id, String

      # @!attribute intent_type
      #   Type of intent.
      #
      #   @return [Symbol, Privy::Models::IntentType]
      required :intent_type, enum: -> { Privy::IntentType }

      # @!attribute status
      #   The current status of the intent.
      #
      #   @return [String]
      required :status, String

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::IntentFailedWebhookPayload::Type]
      required :type, enum: -> { Privy::IntentFailedWebhookPayload::Type }

      # @!attribute created_by_display_name
      #   Display name of the user who created the intent.
      #
      #   @return [String, nil]
      optional :created_by_display_name, String

      # @!attribute created_by_id
      #   The ID of the user who created the intent.
      #
      #   @return [String, nil]
      optional :created_by_id, String

      # @!method initialize(action_result:, created_at:, expires_at:, intent_id:, intent_type:, status:, type:, created_by_display_name: nil, created_by_id: nil)
      #   Payload for the intent.failed webhook event.
      #
      #   @param action_result [Privy::Models::BaseActionResult] Result of the failed intent execution.
      #
      #   @param created_at [Float] Unix timestamp when the intent was created.
      #
      #   @param expires_at [Float] Unix timestamp when the intent expires.
      #
      #   @param intent_id [String] The unique ID of the intent.
      #
      #   @param intent_type [Symbol, Privy::Models::IntentType] Type of intent.
      #
      #   @param status [String] The current status of the intent.
      #
      #   @param type [Symbol, Privy::Models::IntentFailedWebhookPayload::Type] The type of webhook event.
      #
      #   @param created_by_display_name [String] Display name of the user who created the intent.
      #
      #   @param created_by_id [String] The ID of the user who created the intent.

      # The type of webhook event.
      #
      # @see Privy::Models::IntentFailedWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        INTENT_FAILED = :"intent.failed"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
