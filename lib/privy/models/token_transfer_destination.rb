# frozen_string_literal: true

module Privy
  module Models
    class TokenTransferDestination < Privy::Internal::Type::BaseModel
      # @!attribute address
      #   Recipient address (hex for EVM, base58 for Solana, base58check for Tron)
      #
      #   @return [String]
      required :address, String

      # @!attribute asset
      #   The destination asset. Required for cross-asset transfers (e.g., source 'usdt'
      #   to destination 'usdc').
      #
      #   @return [String, nil]
      optional :asset, String

      # @!attribute chain
      #   The destination blockchain network. Required for cross-chain transfers (e.g.,
      #   source 'tempo' to destination 'base').
      #
      #   @return [String, nil]
      optional :chain, String

      # @!method initialize(address:, asset: nil, chain: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::TokenTransferDestination} for more details.
      #
      #   The destination address for a token transfer. Optionally specify a different
      #   asset or chain for cross-asset or cross-chain transfers.
      #
      #   @param address [String] Recipient address (hex for EVM, base58 for Solana, base58check for Tron)
      #
      #   @param asset [String] The destination asset. Required for cross-asset transfers (e.g., source 'usdt' t
      #
      #   @param chain [String] The destination blockchain network. Required for cross-chain transfers (e.g., so
    end
  end
end
