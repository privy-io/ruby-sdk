# frozen_string_literal: true

module Privy
  module Models
    class PasswordlessTransferRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute email
      #
      #   @return [String]
      required :email, String

      # @!attribute nonce
      #
      #   @return [String]
      required :nonce, String

      # @!method initialize(email:, nonce:)
      #   The request body for transferring a passwordless account.
      #
      #   @param email [String]
      #   @param nonce [String]
    end
  end
end
