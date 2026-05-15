# frozen_string_literal: true

module Privy
  module Models
    class IntentCreatedWebhookPayload < Privy::Internal::Type::BaseModel
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
      #   @return [Symbol, Privy::Models::IntentCreatedWebhookPayload::Type]
      required :type, enum: -> { Privy::IntentCreatedWebhookPayload::Type }

      # @!attribute authorization_details
      #   Key quorums that can authorize this intent.
      #
      #   @return [Array<Privy::Models::IntentAuthorization>, nil]
      optional :authorization_details, -> { Privy::Internal::Type::ArrayOf[Privy::IntentAuthorization] }

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

      # @!method initialize(created_at:, expires_at:, intent_id:, intent_type:, status:, type:, authorization_details: nil, created_by_display_name: nil, created_by_id: nil)
      #   Payload for the intent.created webhook event.
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
      #   @param type [Symbol, Privy::Models::IntentCreatedWebhookPayload::Type] The type of webhook event.
      #
      #   @param authorization_details [Array<Privy::Models::IntentAuthorization>] Key quorums that can authorize this intent.
      #
      #   @param created_by_display_name [String] Display name of the user who created the intent.
      #
      #   @param created_by_id [String] The ID of the user who created the intent.

      # The type of webhook event.
      #
      # @see Privy::Models::IntentCreatedWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        INTENT_CREATED = :"intent.created"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
