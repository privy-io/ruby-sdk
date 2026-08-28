# frozen_string_literal: true

module Privy
  module Models
    # The request body for transferring an OAuth account.
    module OAuthTransferRequestBody
      extend Privy::Internal::Type::Union

      # OAuth transfer request body for native SDKs using PKCE.
      variant -> { Privy::OAuthTransferNativeSDKRequestBody }

      # OAuth transfer request body for the web SDK.
      variant -> { Privy::OAuthTransferWebSDKRequestBody }

      # @!method self.variants
      #   @return [Array(Privy::Models::OAuthTransferNativeSDKRequestBody, Privy::Models::OAuthTransferWebSDKRequestBody)]
    end
  end
end
