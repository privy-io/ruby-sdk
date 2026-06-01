# frozen_string_literal: true

module Privy
  module Models
    class OAuthTokenDeviceCodeRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute device_code
      #   The device code received from the device authorization endpoint.
      #
      #   @return [String]
      required :device_code, String

      # @!attribute grant_type
      #
      #   @return [Symbol, Privy::Models::OAuthTokenDeviceCodeRequestBody::GrantType]
      required :grant_type, enum: -> { Privy::OAuthTokenDeviceCodeRequestBody::GrantType }

      # @!method initialize(device_code:, grant_type:)
      #   Request body for the urn:ietf:params:oauth:grant-type:device_code grant type
      #   (RFC 8628). Used by CLI clients to poll for authorization.
      #
      #   @param device_code [String] The device code received from the device authorization endpoint.
      #
      #   @param grant_type [Symbol, Privy::Models::OAuthTokenDeviceCodeRequestBody::GrantType]

      # @see Privy::Models::OAuthTokenDeviceCodeRequestBody#grant_type
      module GrantType
        extend Privy::Internal::Type::Enum

        URN_IETF_PARAMS_OAUTH_GRANT_TYPE_DEVICE_CODE = :"urn:ietf:params:oauth:grant-type:device_code"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
