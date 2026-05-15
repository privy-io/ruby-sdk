# frozen_string_literal: true

module Privy
  module Models
    class OAuthCallbackICloudExpoInput < Privy::Internal::Type::BaseModel
      # @!attribute ck_web_auth_token
      #
      #   @return [String]
      required :ck_web_auth_token, String, api_name: :ckWebAuthToken

      # @!method initialize(ck_web_auth_token:)
      #   The input for the iCloud Expo OAuth callback.
      #
      #   @param ck_web_auth_token [String]
    end
  end
end
