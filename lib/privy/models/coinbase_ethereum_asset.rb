# frozen_string_literal: true

module Privy
  module Models
    # An Ethereum asset supported by Coinbase on-ramp.
    module CoinbaseEthereumAsset
      extend Privy::Internal::Type::Enum

      ETH = :eth
      ETH_2 = :ETH
      USDC = :USDC
      POL = :POL
      MON = :MON

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
