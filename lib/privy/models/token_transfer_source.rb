# frozen_string_literal: true

module Privy
  module Models
    # The source asset, amount, and chain for a token transfer. Specify either `asset`
    # (named) or `asset_address` (custom), not both.
    module TokenTransferSource
      extend Privy::Internal::Type::Union

      # Source for a transfer identified by a named asset (e.g. "usdc", "eth"). Use this variant for first-class assets maintained by Privy.
      variant -> { Privy::NamedTokenTransferSource }

      # Source for a transfer identified by a token contract address (EVM) or mint address (Solana). Use this variant for tokens that are not first-class assets.
      variant -> { Privy::CustomTokenTransferSource }

      # @!method self.variants
      #   @return [Array(Privy::Models::NamedTokenTransferSource, Privy::Models::CustomTokenTransferSource)]
    end
  end
end
