# frozen_string_literal: true

module Privy
  module Models
    class FarcasterSignerInitRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute ed25519_public_key
      #
      #   @return [String]
      required :ed25519_public_key, String

      # @!attribute deadline
      #
      #   @return [String, nil]
      optional :deadline, String

      # @!method initialize(ed25519_public_key:, deadline: nil)
      #   The request body for initiating a Farcaster signer connection.
      #
      #   @param ed25519_public_key [String]
      #   @param deadline [String]
    end
  end
end
