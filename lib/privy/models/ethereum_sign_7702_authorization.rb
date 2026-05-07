# frozen_string_literal: true

module Privy
  module Models
    class EthereumSign7702Authorization < Privy::Internal::Type::BaseModel
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

      # @!attribute r
      #   A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
      #   bytes).
      #
      #   @return [String]
      required :r, String

      # @!attribute s
      #   A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
      #   bytes).
      #
      #   @return [String]
      required :s, String

      # @!attribute y_parity
      #
      #   @return [Float]
      required :y_parity, Float

      # @!method initialize(chain_id:, contract:, nonce:, r:, s:, y_parity:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::EthereumSign7702Authorization} for more details.
      #
      #   A signed EIP-7702 authorization that delegates code execution to a contract
      #   address.
      #
      #   @param chain_id [String, Integer] A quantity value that can be either a hex string starting with '0x' or a non-neg
      #
      #   @param contract [String]
      #
      #   @param nonce [String, Integer] A quantity value that can be either a hex string starting with '0x' or a non-neg
      #
      #   @param r [String] A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000 byt
      #
      #   @param s [String] A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000 byt
      #
      #   @param y_parity [Float]
    end
  end
end
