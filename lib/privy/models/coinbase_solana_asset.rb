# frozen_string_literal: true

module Privy
  module Models
    # A Solana asset supported by Coinbase on-ramp.
    module CoinbaseSolanaAsset
      extend Privy::Internal::Type::Enum

      SOL = :SOL
      USDC = :USDC

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
