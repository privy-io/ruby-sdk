# frozen_string_literal: true

module Privy
  module Models
    class OAuthTransferRequestBody < Privy::Internal::Type::BaseModel
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
      #   The request body for transferring an OAuth account.
      #
      #   @param nonce [String]
      #
      #   @param user_info [Privy::Models::OAuthTransferUserInfo] User info for an OAuth transfer.
    end
  end
end
