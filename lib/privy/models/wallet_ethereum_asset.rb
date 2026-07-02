# frozen_string_literal: true

module Privy
  module Models
    # A named asset on Ethereum-compatible chains.
    module WalletEthereumAsset
      extend Privy::Internal::Type::Enum

      USDC = :usdc
      USDC_E = :"usdc.e"
      ETH = :eth
      AVAX = :avax
      POL = :pol
      BNB = :bnb
      USDT = :usdt
      EURC = :eurc
      USDB = :usdb

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
