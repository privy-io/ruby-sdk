# frozen_string_literal: true

module Privy
  module Models
    class SiwsNonce < Privy::Internal::Type::BaseModel
      # @!attribute address
      #
      #   @return [String]
      required :address, String

      # @!attribute expires_at
      #
      #   @return [String]
      required :expires_at, String

      # @!attribute nonce
      #
      #   @return [String]
      required :nonce, String

      # @!method initialize(address:, expires_at:, nonce:)
      #   A SIWS nonce response.
      #
      #   @param address [String]
      #   @param expires_at [String]
      #   @param nonce [String]
    end
  end
end
