# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      # @see Privy::Resources::Wallets::Balance#get
      class BalanceGetResponse < Privy::Internal::Type::BaseModel
        # @!attribute balances
        #
        #   @return [Array<Privy::Models::Wallets::BalanceGetResponse::Balance>]
        required :balances,
                 -> { Privy::Internal::Type::ArrayOf[Privy::Models::Wallets::BalanceGetResponse::Balance] }

        # @!method initialize(balances:)
        #   @param balances [Array<Privy::Models::Wallets::BalanceGetResponse::Balance>]

        class Balance < Privy::Internal::Type::BaseModel
          # @!attribute asset
          #
          #   @return [Symbol, String, Privy::Models::Wallets::BalanceGetResponse::Balance::Asset]
          required :asset, union: -> { Privy::Models::Wallets::BalanceGetResponse::Balance::Asset }

          # @!attribute chain
          #
          #   @return [Symbol, Privy::Models::Wallets::BalanceGetResponse::Balance::Chain]
          required :chain, enum: -> { Privy::Models::Wallets::BalanceGetResponse::Balance::Chain }

          # @!attribute display_values
          #
          #   @return [Hash{Symbol=>String}]
          required :display_values, Privy::Internal::Type::HashOf[String]

          # @!attribute raw_value
          #
          #   @return [String]
          required :raw_value, String

          # @!attribute raw_value_decimals
          #
          #   @return [Float]
          required :raw_value_decimals, Float

          # @!method initialize(asset:, chain:, display_values:, raw_value:, raw_value_decimals:)
          #   @param asset [Symbol, String, Privy::Models::Wallets::BalanceGetResponse::Balance::Asset]
          #   @param chain [Symbol, Privy::Models::Wallets::BalanceGetResponse::Balance::Chain]
          #   @param display_values [Hash{Symbol=>String}]
          #   @param raw_value [String]
          #   @param raw_value_decimals [Float]

          # @see Privy::Models::Wallets::BalanceGetResponse::Balance#asset
          module Asset
            extend Privy::Internal::Type::Union

            variant const: -> { Privy::Models::Wallets::BalanceGetResponse::Balance::Asset::USDC }

            variant const: -> { Privy::Models::Wallets::BalanceGetResponse::Balance::Asset::USDC_E }

            variant const: -> { Privy::Models::Wallets::BalanceGetResponse::Balance::Asset::ETH }

            variant const: -> { Privy::Models::Wallets::BalanceGetResponse::Balance::Asset::AVAX }

            variant const: -> { Privy::Models::Wallets::BalanceGetResponse::Balance::Asset::POL }

            variant const: -> { Privy::Models::Wallets::BalanceGetResponse::Balance::Asset::USDT }

            variant const: -> { Privy::Models::Wallets::BalanceGetResponse::Balance::Asset::EURC }

            variant const: -> { Privy::Models::Wallets::BalanceGetResponse::Balance::Asset::USDB }

            variant const: -> { Privy::Models::Wallets::BalanceGetResponse::Balance::Asset::SOL }

            variant String

            # @!method self.variants
            #   @return [Array(Symbol, String)]

            define_sorbet_constant!(:Variants) do
              T.type_alias { T.any(Privy::Models::Wallets::BalanceGetResponse::Balance::Asset::TaggedSymbol, String) }
            end

            # @!group

            USDC = :usdc
            USDC_E = :"usdc.e"
            ETH = :eth
            AVAX = :avax
            POL = :pol
            USDT = :usdt
            EURC = :eurc
            USDB = :usdb
            SOL = :sol

            # @!endgroup
          end

          # @see Privy::Models::Wallets::BalanceGetResponse::Balance#chain
          module Chain
            extend Privy::Internal::Type::Enum

            ETHEREUM = :ethereum
            ARBITRUM = :arbitrum
            AVALANCHE = :avalanche
            BASE = :base
            TEMPO = :tempo
            LINEA = :linea
            OPTIMISM = :optimism
            POLYGON = :polygon
            SOLANA = :solana
            ZKSYNC_ERA = :zksync_era
            SEPOLIA = :sepolia
            ARBITRUM_SEPOLIA = :arbitrum_sepolia
            AVALANCHE_FUJI = :avalanche_fuji
            BASE_SEPOLIA = :base_sepolia
            LINEA_TESTNET = :linea_testnet
            OPTIMISM_SEPOLIA = :optimism_sepolia
            POLYGON_AMOY = :polygon_amoy
            SOLANA_DEVNET = :solana_devnet
            SOLANA_TESTNET = :solana_testnet

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
