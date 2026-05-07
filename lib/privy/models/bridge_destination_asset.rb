# frozen_string_literal: true

module Privy
  module Models
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
