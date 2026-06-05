# frozen_string_literal: true

module Privy
  module Models
    # A named asset supported across all chains.
    module WalletAsset
      extend Privy::Internal::Type::Enum

      USDC = :usdc
      USDC_E = :"usdc.e"
      ETH = :eth
      AVAX = :avax
      POL = :pol
      USDT = :usdt
      EURC = :eurc
      USDB = :usdb
      SOL = :sol

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
