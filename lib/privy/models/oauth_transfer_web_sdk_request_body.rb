# frozen_string_literal: true

module Privy
  module Models
    class OAuthTransferWebSDKRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute nonce
      #
      #   @return [String]
      required :nonce, String

      # @!attribute user_info
      #   User info for an OAuth transfer.
      #
      #   @return [Privy::Models::OAuthTransferUserInfo]
      required :user_info, -> { Privy::OAuthTransferUserInfo }, api_name: :userInfo

      # @!method initialize(nonce:, user_info:)
      #   OAuth transfer request body for the web SDK.
      #
      #   @param nonce [String]
      #
      #   @param user_info [Privy::Models::OAuthTransferUserInfo] User info for an OAuth transfer.
    end
  end
end
