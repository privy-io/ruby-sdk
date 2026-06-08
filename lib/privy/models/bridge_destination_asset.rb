# frozen_string_literal: true

module Privy
  module Models
    # Supported destination stablecoin assets for fiat-to-crypto transfers.
    module BridgeDestinationAsset
      extend Privy::Internal::Type::Enum

      USDB = :usdb
      USDC = :usdc
      USDT = :usdt
      DAI = :dai
      PYUSD = :pyusd
      EURC = :eurc

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
