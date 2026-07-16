# frozen_string_literal: true

module Privy
  module Models
    class NamedTokenTransferSource < Privy::Internal::Type::BaseModel
      # @!attribute asset
      #   The asset to transfer. Supported: 'usdc', 'usdb', 'usdt' (stablecoins), 'eth'
      #   (native Ethereum), 'sol' (native Solana).
      #
      #   @return [String]
      required :asset, String

      # @!attribute chain
      #   The blockchain network on which to perform the transfer. Supported chains
      #   include: 'tempo', 'ethereum', 'base', 'arbitrum', 'polygon', 'solana', and their
      #   respective testnets.
      #
      #   @return [String]
      required :chain, String

      # @!attribute amount
      #   @deprecated
      #
      #   Amount as a decimal string in the token's standard unit (e.g. "1.5" for 1.5
      #   USDC, "0.01" for 0.01 ETH). For exact_input, specifies the amount to send. Not
      #   in the smallest on-chain unit (wei, lamports, etc.). Maximum 100 characters.
      #   Deprecated: use the top-level `amount` field instead.
      #
      #   @return [String, nil]
      optional :amount, String

      # @!method initialize(asset:, chain:, amount: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::NamedTokenTransferSource} for more details.
      #
      #   Source for a transfer identified by a named asset (e.g. "usdc", "eth"). Use this
      #   variant for first-class assets maintained by Privy.
      #
      #   @param asset [String] The asset to transfer. Supported: 'usdc', 'usdb', 'usdt' (stablecoins), 'eth' (n
      #
      #   @param chain [String] The blockchain network on which to perform the transfer. Supported chains includ
      #
      #   @param amount [String] Amount as a decimal string in the token's standard unit (e.g. "1.5" for 1.5 USDC
    end
  end
end
