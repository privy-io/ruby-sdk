# frozen_string_literal: true

module Privy
  module Models
    # The input for initializing a Coinbase on-ramp session.
    module CoinbaseOnRampInitInput
      extend Privy::Internal::Type::Union

      # Input for initializing a Coinbase on-ramp session for Ethereum.
      variant -> { Privy::CoinbaseOnRampInitEthereumInput }

      # Input for initializing a Coinbase on-ramp session for Solana.
      variant -> { Privy::CoinbaseOnRampInitSolanaInput }

      # @!method self.variants
      #   @return [Array(Privy::Models::CoinbaseOnRampInitEthereumInput, Privy::Models::CoinbaseOnRampInitSolanaInput)]
    end
  end
end
