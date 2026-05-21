# frozen_string_literal: true

module Privy
  module Models
    class IntentAuthorizeInput < Privy::Internal::Type::BaseModel
      # @!attribute signature
      #   Signature authorizing the intent.
      #
      #   @return [String]
      required :signature, String

      # @!attribute timestamp
      #   Unix timestamp (in milliseconds) when the signature was created. Used to verify
      #   the signature was created when the signing key was valid.
      #
      #   @return [Float]
      required :timestamp, Float

      # @!method initialize(signature:, timestamp:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::IntentAuthorizeInput} for more details.
      #
      #   Request body for authorizing an intent.
      #
      #   @param signature [String] Signature authorizing the intent.
      #
      #   @param timestamp [Float] Unix timestamp (in milliseconds) when the signature was created. Used to verify
    end
  end
end
