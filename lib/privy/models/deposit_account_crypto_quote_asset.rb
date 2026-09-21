# frozen_string_literal: true

module Privy
  module Models
    class DepositAccountCryptoQuoteAsset < Privy::Internal::Type::BaseModel
      # @!attribute asset
      #   Named asset ID (e.g. "usdc", "eth") or chain-specific token contract or mint
      #   address
      #
      #   @return [String]
      required :asset, String

      # @!attribute chain
      #   Friendly chain name or CAIP-2 identifier (e.g. "base", "eip155:8453")
      #
      #   @return [String]
      required :chain, String

      # @!method initialize(asset:, chain:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::DepositAccountCryptoQuoteAsset} for more details.
      #
      #   An asset and chain for an indicative crypto deposit-account quote.
      #
      #   @param asset [String] Named asset ID (e.g. "usdc", "eth") or chain-specific token contract or mint add
      #
      #   @param chain [String] Friendly chain name or CAIP-2 identifier (e.g. "base", "eip155:8453")
    end
  end
end
