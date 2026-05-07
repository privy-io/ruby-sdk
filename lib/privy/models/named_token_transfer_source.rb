# frozen_string_literal: true

module Privy
  module Models
    class NamedTokenTransferSource < Privy::Internal::Type::BaseModel
      # @!attribute amount
      #   Amount as a decimal string in the token's standard unit (e.g. "1.5" for 1.5
      #   USDC, "0.01" for 0.01 ETH). Not in the smallest on-chain unit (wei, lamports,
      #   etc.).
      #
      #   @return [String]
      required :amount, String

      # @!attribute asset
      #   The asset to transfer. Supported: 'usdc', 'usdb', 'usdt' (stablecoins), 'eth'
      #   (native Ethereum), 'sol' (native Solana).
      #
      #   @return [String]
      required :asset, String

      # @!attribute chain
      #   The blockchain network on which to perform the transfer. Supported chains
      #   include: 'ethereum', 'base', 'arbitrum', 'polygon', 'solana', and their
      #   respective testnets.
      #
      #   @return [String]
      required :chain, String

      # @!method initialize(amount:, asset:, chain:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::NamedTokenTransferSource} for more details.
      #
      #   Source for a transfer identified by a named asset (e.g. "usdc", "eth"). Use this
      #   variant for first-class assets maintained by Privy.
      #
      #   @param amount [String] Amount as a decimal string in the token's standard unit (e.g. "1.5" for 1.5 USDC
      #
      #   @param asset [String] The asset to transfer. Supported: 'usdc', 'usdb', 'usdt' (stablecoins), 'eth' (n
      #
      #   @param chain [String] The blockchain network on which to perform the transfer. Supported chains includ
    end
  end
end
