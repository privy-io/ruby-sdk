# frozen_string_literal: true

module Privy
  module Models
    class YieldAuthorizationHeaders < Privy::Internal::Type::BaseModel
      # @!attribute privy_app_id
      #   ID of your Privy app.
      #
      #   @return [String]
      required :privy_app_id, String, api_name: :"privy-app-id"

      # @!attribute privy_authorization_signature
      #   Request authorization signature. If multiple signatures are required, they
      #   should be comma separated.
      #
      #   @return [String, nil]
      optional :privy_authorization_signature, String, api_name: :"privy-authorization-signature"

      # @!attribute privy_request_expiry
      #   Request expiry. Value is a Unix timestamp in milliseconds representing the
      #   deadline by which the request must be processed.
      #
      #   @return [String, nil]
      optional :privy_request_expiry, String, api_name: :"privy-request-expiry"

      # @!method initialize(privy_app_id:, privy_authorization_signature: nil, privy_request_expiry: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::YieldAuthorizationHeaders} for more details.
      #
      #   Headers required to authorize yield operations.
      #
      #   @param privy_app_id [String] ID of your Privy app.
      #
      #   @param privy_authorization_signature [String] Request authorization signature. If multiple signatures are required, they shoul
      #
      #   @param privy_request_expiry [String] Request expiry. Value is a Unix timestamp in milliseconds representing the deadl
    end
  end
end
