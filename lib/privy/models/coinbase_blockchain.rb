# frozen_string_literal: true

module Privy
  module Models
    # A blockchain supported by Coinbase on-ramp.
    module CoinbaseBlockchain
      extend Privy::Internal::Type::Enum

      ETHEREUM = :ethereum
      BITCOIN = :bitcoin
      BASE = :base
      AVACCHAIN = :avacchain
      OPTIMISM = :optimism
      SOLANA = :solana
      POLYGON = :polygon
      ARBITRUM = :arbitrum
      STELLAR = :stellar
      MONAD = :monad

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
