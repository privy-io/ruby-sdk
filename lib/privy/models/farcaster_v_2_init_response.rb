# frozen_string_literal: true

module Privy
  module Models
    class FarcasterV2InitResponse < Privy::Internal::Type::BaseModel
      # @!attribute expires_at
      #
      #   @return [String]
      required :expires_at, String

      # @!attribute nonce
      #
      #   @return [String]
      required :nonce, String

      # @!method initialize(expires_at:, nonce:)
      #   Response for initiating a Farcaster V2 connection.
      #
      #   @param expires_at [String]
      #   @param nonce [String]
    end
  end
end
