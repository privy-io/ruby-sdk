# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      # @see Privy::Resources::Wallets::Balance#get
      class BalanceGetParams < Privy::Internal::Type::BaseModel
        extend Privy::Internal::Type::RequestParameters::Converter
        include Privy::Internal::Type::RequestParameters

        # @!attribute wallet_id
        #   ID of the wallet.
        #
        #   @return [String]
        required :wallet_id, String

        # @!attribute token
        #   The token contract address(es) to query in format "chain:address" (e.g.,
        #   "base:0x833589fCD6eDb6E08f4c7C32D4f71b54bdA02913" or
        #   "solana:EPjFWdd5AufqSSqeM2qN1xzybapC8G4wEGGkZwyTDt1v").
        #
        #   @return [String, Array<String>, nil]
        optional :token, union: -> { Privy::Wallets::BalanceGetParams::Token }

        # @!attribute asset
        #
        #   @return [Symbol, Array<Symbol, Privy::Models::WalletAsset>, Privy::Models::Wallets::BalanceGetParams::Asset, nil]
        optional :asset, union: -> { Privy::Wallets::BalanceGetParams::Asset }

        # @!attribute chain
        #
        #   @return [Symbol, Array<Symbol, Privy::Models::Wallets::BalanceGetParams::Chain::UnionMember1>, Privy::Models::Wallets::BalanceGetParams::Chain, nil]
        optional :chain, union: -> { Privy::Wallets::BalanceGetParams::Chain }

        # @!attribute include_currency
        #
        #   @return [Symbol, Privy::Models::Wallets::BalanceGetParams::IncludeCurrency, nil]
        optional :include_currency, enum: -> { Privy::Wallets::BalanceGetParams::IncludeCurrency }

        # @!method initialize(wallet_id:, token: nil, asset: nil, chain: nil, include_currency: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Privy::Models::Wallets::BalanceGetParams} for more details.
        #
        #   @param wallet_id [String] ID of the wallet.
        #
        #   @param token [String, Array<String>] The token contract address(es) to query in format "chain:address" (e.g., "base:0
        #
        #   @param asset [Symbol, Array<Symbol, Privy::Models::WalletAsset>, Privy::Models::Wallets::BalanceGetParams::Asset]
        #
        #   @param chain [Symbol, Array<Symbol, Privy::Models::Wallets::BalanceGetParams::Chain::UnionMember1>, Privy::Models::Wallets::BalanceGetParams::Chain]
        #
        #   @param include_currency [Symbol, Privy::Models::Wallets::BalanceGetParams::IncludeCurrency]
        #
        #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]

        # The token contract address(es) to query in format "chain:address" (e.g.,
        # "base:0x833589fCD6eDb6E08f4c7C32D4f71b54bdA02913" or
        # "solana:EPjFWdd5AufqSSqeM2qN1xzybapC8G4wEGGkZwyTDt1v").
        module Token
          extend Privy::Internal::Type::Union

          variant String

          variant -> { Privy::Models::Wallets::BalanceGetParams::Token::StringArray }

          # @!method self.variants
          #   @return [Array(String, Array<String>)]

          # @type [Privy::Internal::Type::Converter]
          StringArray = Privy::Internal::Type::ArrayOf[String]
        end

        module Asset
          extend Privy::Internal::Type::Union

          variant const: -> { Privy::Models::Wallets::BalanceGetParams::Asset::USDC }

          variant const: -> { Privy::Models::Wallets::BalanceGetParams::Asset::USDC_E }

          variant const: -> { Privy::Models::Wallets::BalanceGetParams::Asset::ETH }

          variant const: -> { Privy::Models::Wallets::BalanceGetParams::Asset::POL }

          variant const: -> { Privy::Models::Wallets::BalanceGetParams::Asset::USDT }

          variant const: -> { Privy::Models::Wallets::BalanceGetParams::Asset::EURC }

          variant const: -> { Privy::Models::Wallets::BalanceGetParams::Asset::USDB }

          variant const: -> { Privy::Models::Wallets::BalanceGetParams::Asset::SOL }

          variant -> { Privy::Models::Wallets::BalanceGetParams::Asset::WalletAssetArray }

          # @!method self.variants
          #   @return [Array(Symbol, Array<Symbol, Privy::Models::WalletAsset>)]

          define_sorbet_constant!(:Variants) do
            T.type_alias { T.any(Privy::Wallets::BalanceGetParams::Asset::TaggedSymbol, T::Array[Privy::WalletAsset::TaggedSymbol]) }
          end

          # @!group

          USDC = :usdc
          USDC_E = :"usdc.e"
          ETH = :eth
          POL = :pol
          USDT = :usdt
          EURC = :eurc
          USDB = :usdb
          SOL = :sol

          # @!endgroup

          # @type [Privy::Internal::Type::Converter]
          WalletAssetArray = Privy::Internal::Type::ArrayOf[enum: -> { Privy::WalletAsset }]
        end

        module Chain
          extend Privy::Internal::Type::Union

          variant const: -> { Privy::Models::Wallets::BalanceGetParams::Chain::ETHEREUM }

          variant const: -> { Privy::Models::Wallets::BalanceGetParams::Chain::ARBITRUM }

          variant const: -> { Privy::Models::Wallets::BalanceGetParams::Chain::BASE }

          variant const: -> { Privy::Models::Wallets::BalanceGetParams::Chain::TEMPO }

          variant const: -> { Privy::Models::Wallets::BalanceGetParams::Chain::LINEA }

          variant const: -> { Privy::Models::Wallets::BalanceGetParams::Chain::OPTIMISM }

          variant const: -> { Privy::Models::Wallets::BalanceGetParams::Chain::POLYGON }

          variant const: -> { Privy::Models::Wallets::BalanceGetParams::Chain::SOLANA }

          variant const: -> { Privy::Models::Wallets::BalanceGetParams::Chain::ZKSYNC_ERA }

          variant const: -> { Privy::Models::Wallets::BalanceGetParams::Chain::SEPOLIA }

          variant const: -> { Privy::Models::Wallets::BalanceGetParams::Chain::ARBITRUM_SEPOLIA }

          variant const: -> { Privy::Models::Wallets::BalanceGetParams::Chain::BASE_SEPOLIA }

          variant const: -> { Privy::Models::Wallets::BalanceGetParams::Chain::LINEA_TESTNET }

          variant const: -> { Privy::Models::Wallets::BalanceGetParams::Chain::OPTIMISM_SEPOLIA }

          variant const: -> { Privy::Models::Wallets::BalanceGetParams::Chain::POLYGON_AMOY }

          variant const: -> { Privy::Models::Wallets::BalanceGetParams::Chain::SOLANA_DEVNET }

          variant const: -> { Privy::Models::Wallets::BalanceGetParams::Chain::SOLANA_TESTNET }

          variant -> { Privy::Models::Wallets::BalanceGetParams::Chain::UnionMember1Array }

          module UnionMember1
            extend Privy::Internal::Type::Enum

            ETHEREUM = :ethereum
            ARBITRUM = :arbitrum
            BASE = :base
            TEMPO = :tempo
            LINEA = :linea
            OPTIMISM = :optimism
            POLYGON = :polygon
            SOLANA = :solana
            ZKSYNC_ERA = :zksync_era
            SEPOLIA = :sepolia
            ARBITRUM_SEPOLIA = :arbitrum_sepolia
            BASE_SEPOLIA = :base_sepolia
            LINEA_TESTNET = :linea_testnet
            OPTIMISM_SEPOLIA = :optimism_sepolia
            POLYGON_AMOY = :polygon_amoy
            SOLANA_DEVNET = :solana_devnet
            SOLANA_TESTNET = :solana_testnet

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @!method self.variants
          #   @return [Array(Symbol, Array<Symbol, Privy::Models::Wallets::BalanceGetParams::Chain::UnionMember1>)]

          define_sorbet_constant!(:Variants) do
            T.type_alias do
              T.any(
                Privy::Wallets::BalanceGetParams::Chain::TaggedSymbol,
                T::Array[Privy::Wallets::BalanceGetParams::Chain::UnionMember1::TaggedSymbol]
              )
            end
          end

          # @!group

          ETHEREUM = :ethereum
          ARBITRUM = :arbitrum
          BASE = :base
          TEMPO = :tempo
          LINEA = :linea
          OPTIMISM = :optimism
          POLYGON = :polygon
          SOLANA = :solana
          ZKSYNC_ERA = :zksync_era
          SEPOLIA = :sepolia
          ARBITRUM_SEPOLIA = :arbitrum_sepolia
          BASE_SEPOLIA = :base_sepolia
          LINEA_TESTNET = :linea_testnet
          OPTIMISM_SEPOLIA = :optimism_sepolia
          POLYGON_AMOY = :polygon_amoy
          SOLANA_DEVNET = :solana_devnet
          SOLANA_TESTNET = :solana_testnet

          # @!endgroup

          # @type [Privy::Internal::Type::Converter]
          UnionMember1Array =
            Privy::Internal::Type::ArrayOf[enum: -> { Privy::Wallets::BalanceGetParams::Chain::UnionMember1 }]
        end

        module IncludeCurrency
          extend Privy::Internal::Type::Enum

          USD = :usd
          EUR = :eur

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
