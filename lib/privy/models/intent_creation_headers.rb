# frozen_string_literal: true

module Privy
  module Models
    class IntentCreationHeaders < Privy::Internal::Type::BaseModel
      # @!attribute privy_app_id
      #   ID of your Privy app.
      #
      #   @return [String]
      required :privy_app_id, String, api_name: :"privy-app-id"

      # @!attribute privy_request_expiry
      #   Request expiry. Value is a Unix timestamp in milliseconds representing the
      #   deadline by which the request must be processed.
      #
      #   @return [String, nil]
      optional :privy_request_expiry, String, api_name: :"privy-request-expiry"

      # @!method initialize(privy_app_id:, privy_request_expiry: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::IntentCreationHeaders} for more details.
      #
      #   Headers required to create an intent.
      #
      #   @param privy_app_id [String] ID of your Privy app.
      #
      #   @param privy_request_expiry [String] Request expiry. Value is a Unix timestamp in milliseconds representing the deadl
    end
  end
end
