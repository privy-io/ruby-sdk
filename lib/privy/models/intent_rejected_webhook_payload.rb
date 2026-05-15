# frozen_string_literal: true

module Privy
  module Models
    class IntentRejectedWebhookPayload < Privy::Internal::Type::BaseModel
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

      # @!attribute rejected_at
      #   Unix timestamp when the intent was rejected.
      #
      #   @return [Float]
      required :rejected_at, Float

      # @!attribute status
      #   The current status of the intent.
      #
      #   @return [String]
      required :status, String

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::IntentRejectedWebhookPayload::Type]
      required :type, enum: -> { Privy::IntentRejectedWebhookPayload::Type }

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

      # @!method initialize(created_at:, expires_at:, intent_id:, intent_type:, rejected_at:, status:, type:, created_by_display_name: nil, created_by_id: nil)
      #   Payload for the intent.rejected webhook event.
      #
      #   @param created_at [Float] Unix timestamp when the intent was created.
      #
      #   @param expires_at [Float] Unix timestamp when the intent expires.
      #
      #   @param intent_id [String] The unique ID of the intent.
      #
      #   @param intent_type [Symbol, Privy::Models::IntentType] Type of intent.
      #
      #   @param rejected_at [Float] Unix timestamp when the intent was rejected.
      #
      #   @param status [String] The current status of the intent.
      #
      #   @param type [Symbol, Privy::Models::IntentRejectedWebhookPayload::Type] The type of webhook event.
      #
      #   @param created_by_display_name [String] Display name of the user who created the intent.
      #
      #   @param created_by_id [String] The ID of the user who created the intent.

      # The type of webhook event.
      #
      # @see Privy::Models::IntentRejectedWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        INTENT_REJECTED = :"intent.rejected"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
