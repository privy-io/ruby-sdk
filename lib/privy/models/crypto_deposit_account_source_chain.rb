# frozen_string_literal: true

module Privy
  module Models
    class CryptoDepositAccountSourceChain < Privy::Internal::Type::BaseModel
      # @!attribute address
      #   Token contract or native asset address on this chain.
      #
      #   @return [String]
      required :address, String

      # @!attribute caip2
      #   EVM CAIP-2 chain identifier (e.g. "eip155:4217" for Tempo, "eip155:1" for
      #   Ethereum).
      #
      #   @return [String]
      required :caip2, String

      # @!attribute decimals
      #   Token decimals on this chain.
      #
      #   @return [Integer]
      required :decimals, Integer

      # @!method initialize(address:, caip2:, decimals:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::CryptoDepositAccountSourceChain} for more details.
      #
      #   A token contract on one source chain in the crypto deposit-account catalog.
      #
      #   @param address [String] Token contract or native asset address on this chain.
      #
      #   @param caip2 [String] EVM CAIP-2 chain identifier (e.g. "eip155:4217" for Tempo, "eip155:1" for Ethere
      #
      #   @param decimals [Integer] Token decimals on this chain.
    end
  end
end
