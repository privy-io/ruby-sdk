# frozen_string_literal: true

module Privy
  module Models
    class MfaTotpInitResponseBody < Privy::Internal::Type::BaseModel
      # @!attribute totp_auth_url
      #
      #   @return [String]
      required :totp_auth_url, String, api_name: :totpAuthUrl

      # @!attribute totp_secret
      #
      #   @return [String]
      required :totp_secret, String, api_name: :totpSecret

      # @!method initialize(totp_auth_url:, totp_secret:)
      #   The response body for initializing a TOTP MFA code.
      #
      #   @param totp_auth_url [String]
      #   @param totp_secret [String]
    end
  end
end
