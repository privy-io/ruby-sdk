# frozen_string_literal: true

module Privy
  module Models
    class TransferFarcasterInput < Privy::Internal::Type::BaseModel
      # @!attribute farcaster_embedded_address
      #
      #   @return [String]
      required :farcaster_embedded_address, String

      # @!attribute farcaster_id
      #
      #   @return [String]
      required :farcaster_id, String

      # @!attribute nonce
      #
      #   @return [String]
      required :nonce, String

      # @!method initialize(farcaster_embedded_address:, farcaster_id:, nonce:)
      #   Input for transferring a Farcaster account.
      #
      #   @param farcaster_embedded_address [String]
      #   @param farcaster_id [String]
      #   @param nonce [String]
    end
  end
end
