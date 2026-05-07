# frozen_string_literal: true

module Privy
  module Models
    # A Moonpay currency code for an Ethereum-compatible chain asset.
    module MoonpayCurrencyCode
      extend Privy::Internal::Type::Enum

      AVAX_CCHAIN = :AVAX_CCHAIN
      CELO_CELO = :CELO_CELO
      CUSD_CELO = :CUSD_CELO
      DAI_ETHEREUM = :DAI_ETHEREUM
      ETH_ETHEREUM = :ETH_ETHEREUM
      ETH_ARBITRUM = :ETH_ARBITRUM
      ETH_OPTIMISM = :ETH_OPTIMISM
      ETH_POLYGON = :ETH_POLYGON
      ETH_BASE = :ETH_BASE
      FIL_FVM = :FIL_FVM
      MATIC_ETHEREUM = :MATIC_ETHEREUM
      MATIC_POLYGON = :MATIC_POLYGON
      POL_POLYGON = :POL_POLYGON
      POL_ETHEREUM = :POL_ETHEREUM
      USDC_ETHEREUM = :USDC_ETHEREUM
      USDC_ARBITRUM = :USDC_ARBITRUM
      USDC_OPTIMISM = :USDC_OPTIMISM
      USDC_POLYGON = :USDC_POLYGON
      USDC_BASE = :USDC_BASE
      USDC_CCHAIN = :USDC_CCHAIN
      USDC_SOL = :USDC_SOL
      USDT_ETHEREUM = :USDT_ETHEREUM
      USDT_POLYGON = :USDT_POLYGON
      WETH_POLYGON = :WETH_POLYGON
      WBTC_ETHEREUM = :WBTC_ETHEREUM
      BNB_BNB = :BNB_BNB
      BNB_BSC = :BNB_BSC
      MON_MON = :MON_MON
      CELO = :CELO
      CUSD = :CUSD
      DAI = :DAI
      ETH = :ETH
      FIL = :FIL
      MATIC = :MATIC
      USDC = :USDC
      USDT = :USDT
      WETH = :WETH
      WBTC = :WBTC

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
