# typed: strong

module Privy
  module Models
    # A Moonpay currency code for an Ethereum-compatible chain asset.
    module MoonpayCurrencyCode
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::MoonpayCurrencyCode) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      AVAX_CCHAIN =
        T.let(:AVAX_CCHAIN, Privy::MoonpayCurrencyCode::TaggedSymbol)
      CELO_CELO = T.let(:CELO_CELO, Privy::MoonpayCurrencyCode::TaggedSymbol)
      CUSD_CELO = T.let(:CUSD_CELO, Privy::MoonpayCurrencyCode::TaggedSymbol)
      DAI_ETHEREUM =
        T.let(:DAI_ETHEREUM, Privy::MoonpayCurrencyCode::TaggedSymbol)
      ETH_ETHEREUM =
        T.let(:ETH_ETHEREUM, Privy::MoonpayCurrencyCode::TaggedSymbol)
      ETH_ARBITRUM =
        T.let(:ETH_ARBITRUM, Privy::MoonpayCurrencyCode::TaggedSymbol)
      ETH_OPTIMISM =
        T.let(:ETH_OPTIMISM, Privy::MoonpayCurrencyCode::TaggedSymbol)
      ETH_POLYGON =
        T.let(:ETH_POLYGON, Privy::MoonpayCurrencyCode::TaggedSymbol)
      ETH_BASE = T.let(:ETH_BASE, Privy::MoonpayCurrencyCode::TaggedSymbol)
      FIL_FVM = T.let(:FIL_FVM, Privy::MoonpayCurrencyCode::TaggedSymbol)
      MATIC_ETHEREUM =
        T.let(:MATIC_ETHEREUM, Privy::MoonpayCurrencyCode::TaggedSymbol)
      MATIC_POLYGON =
        T.let(:MATIC_POLYGON, Privy::MoonpayCurrencyCode::TaggedSymbol)
      POL_POLYGON =
        T.let(:POL_POLYGON, Privy::MoonpayCurrencyCode::TaggedSymbol)
      POL_ETHEREUM =
        T.let(:POL_ETHEREUM, Privy::MoonpayCurrencyCode::TaggedSymbol)
      USDC_ETHEREUM =
        T.let(:USDC_ETHEREUM, Privy::MoonpayCurrencyCode::TaggedSymbol)
      USDC_ARBITRUM =
        T.let(:USDC_ARBITRUM, Privy::MoonpayCurrencyCode::TaggedSymbol)
      USDC_OPTIMISM =
        T.let(:USDC_OPTIMISM, Privy::MoonpayCurrencyCode::TaggedSymbol)
      USDC_POLYGON =
        T.let(:USDC_POLYGON, Privy::MoonpayCurrencyCode::TaggedSymbol)
      USDC_BASE = T.let(:USDC_BASE, Privy::MoonpayCurrencyCode::TaggedSymbol)
      USDC_CCHAIN =
        T.let(:USDC_CCHAIN, Privy::MoonpayCurrencyCode::TaggedSymbol)
      USDC_SOL = T.let(:USDC_SOL, Privy::MoonpayCurrencyCode::TaggedSymbol)
      USDT_ETHEREUM =
        T.let(:USDT_ETHEREUM, Privy::MoonpayCurrencyCode::TaggedSymbol)
      USDT_POLYGON =
        T.let(:USDT_POLYGON, Privy::MoonpayCurrencyCode::TaggedSymbol)
      WETH_POLYGON =
        T.let(:WETH_POLYGON, Privy::MoonpayCurrencyCode::TaggedSymbol)
      WBTC_ETHEREUM =
        T.let(:WBTC_ETHEREUM, Privy::MoonpayCurrencyCode::TaggedSymbol)
      BNB_BNB = T.let(:BNB_BNB, Privy::MoonpayCurrencyCode::TaggedSymbol)
      BNB_BSC = T.let(:BNB_BSC, Privy::MoonpayCurrencyCode::TaggedSymbol)
      MON_MON = T.let(:MON_MON, Privy::MoonpayCurrencyCode::TaggedSymbol)
      CELO = T.let(:CELO, Privy::MoonpayCurrencyCode::TaggedSymbol)
      CUSD = T.let(:CUSD, Privy::MoonpayCurrencyCode::TaggedSymbol)
      DAI = T.let(:DAI, Privy::MoonpayCurrencyCode::TaggedSymbol)
      ETH = T.let(:ETH, Privy::MoonpayCurrencyCode::TaggedSymbol)
      FIL = T.let(:FIL, Privy::MoonpayCurrencyCode::TaggedSymbol)
      MATIC = T.let(:MATIC, Privy::MoonpayCurrencyCode::TaggedSymbol)
      USDC = T.let(:USDC, Privy::MoonpayCurrencyCode::TaggedSymbol)
      USDT = T.let(:USDT, Privy::MoonpayCurrencyCode::TaggedSymbol)
      WETH = T.let(:WETH, Privy::MoonpayCurrencyCode::TaggedSymbol)
      WBTC = T.let(:WBTC, Privy::MoonpayCurrencyCode::TaggedSymbol)

      sig do
        override.returns(T::Array[Privy::MoonpayCurrencyCode::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
