# frozen_string_literal: true

module Privy
  module Models
    class TempoAaAuthorization < Privy::Internal::Type::BaseModel
      # @!attribute chain_id
      #   A quantity value that can be either a hex string starting with '0x' or a
      #   non-negative integer.
      #
      #   @return [String, Integer]
      required :chain_id, union: -> { Privy::Quantity }

      # @!attribute contract
      #
      #   @return [String]
      required :contract, String

      # @!attribute nonce
      #   A quantity value that can be either a hex string starting with '0x' or a
      #   non-negative integer.
      #
      #   @return [String, Integer]
      required :nonce, union: -> { Privy::Quantity }

      # @!attribute signature
      #   A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
      #   bytes).
      #
      #   @return [String]
      required :signature, String

      # @!method initialize(chain_id:, contract:, nonce:, signature:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::TempoAaAuthorization} for more details.
      #
      #   An AA authorization for Tempo transactions with P256/WebAuthn signatures.
      #
      #   @param chain_id [String, Integer] A quantity value that can be either a hex string starting with '0x' or a non-neg
      #
      #   @param contract [String]
      #
      #   @param nonce [String, Integer] A quantity value that can be either a hex string starting with '0x' or a non-neg
      #
      #   @param signature [String] A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000 byt
    end
  end
end
