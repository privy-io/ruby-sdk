# frozen_string_literal: true

module Privy
  module Models
    # An EVM, Solana, or Tron CAIP-2 chain identifier supported by wallet automation
    # reindex.
    module WalletAutomationReindexCaip2
      extend Privy::Internal::Type::Union

      # EVM CAIP-2 chain identifier (e.g. "eip155:4217" for Tempo, "eip155:1" for Ethereum).
      variant -> { Privy::EvmCaip2 }

      # Tron CAIP-2 chain identifier. Supported values: "tron:mainnet", "tron:nile".
      variant enum: -> { Privy::TronCaip2 }

      # @!method self.variants
      #   @return [Array(String, Symbol, Privy::Models::TronCaip2)]
    end
  end
end
