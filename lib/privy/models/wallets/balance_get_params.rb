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
        #   "solana:EPjFWdd5AufqSSqeM2qN1xzybapC8G4wEGGkZwyTDt1v"). Cannot be used together
        #   with `asset`/`chain` or with `include_currency`.
        #
        #   @return [String, Array<String>, nil]
        optional :token, union: -> { Privy::Wallets::BalanceGetParams::Token }

        # @!attribute asset
        #   Named asset(s) to query (e.g. `eth`, `usdc`). Use together with `chain` to scope
        #   the query. Cannot be used with `token`.
        #
        #   @return [Symbol, Array<Symbol, Privy::Models::WalletAsset>, Privy::Models::Wallets::BalanceGetParams::Asset, nil]
        optional :asset, union: -> { Privy::Wallets::BalanceGetParams::Asset }

        # @!attribute chain
        #   Chain(s) to query named assets on (e.g. `base`, `ethereum`). Use together with
        #   `asset`. Cannot be used with `token`.
        #
        #   @return [Symbol, Privy::Models::WalletAssetChainNameInput, Array<Symbol, Privy::Models::WalletAssetChainNameInput>, nil]
        optional :chain, union: -> { Privy::Wallets::BalanceGetParams::Chain }

        # @!attribute include_archived
        #   Include archived wallets in lookup. Defaults to false.
        #
        #   @return [Boolean, nil]
        optional :include_archived, Privy::Internal::Type::Boolean

        # @!attribute include_currency
        #   If set, balances are converted to the specified fiat currency. Not supported
        #   when `token` is provided.
        #
        #   @return [Symbol, Privy::Models::Wallets::BalanceGetParams::IncludeCurrency, nil]
        optional :include_currency, enum: -> { Privy::Wallets::BalanceGetParams::IncludeCurrency }

        # @!method initialize(wallet_id:, token: nil, asset: nil, chain: nil, include_archived: nil, include_currency: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Privy::Models::Wallets::BalanceGetParams} for more details.
        #
        #   @param wallet_id [String] ID of the wallet.
        #
        #   @param token [String, Array<String>] The token contract address(es) to query in format "chain:address" (e.g., "base:0
        #
        #   @param asset [Symbol, Array<Symbol, Privy::Models::WalletAsset>, Privy::Models::Wallets::BalanceGetParams::Asset] Named asset(s) to query (e.g. `eth`, `usdc`). Use together with `chain` to scope
        #
        #   @param chain [Symbol, Privy::Models::WalletAssetChainNameInput, Array<Symbol, Privy::Models::WalletAssetChainNameInput>] Chain(s) to query named assets on (e.g. `base`, `ethereum`). Use together with `
        #
        #   @param include_archived [Boolean] Include archived wallets in lookup. Defaults to false.
        #
        #   @param include_currency [Symbol, Privy::Models::Wallets::BalanceGetParams::IncludeCurrency] If set, balances are converted to the specified fiat currency. Not supported whe
        #
        #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]

        # The token contract address(es) to query in format "chain:address" (e.g.,
        # "base:0x833589fCD6eDb6E08f4c7C32D4f71b54bdA02913" or
        # "solana:EPjFWdd5AufqSSqeM2qN1xzybapC8G4wEGGkZwyTDt1v"). Cannot be used together
        # with `asset`/`chain` or with `include_currency`.
        module Token
          extend Privy::Internal::Type::Union

          variant String

          variant -> { Privy::Models::Wallets::BalanceGetParams::Token::StringArray }

          # @!method self.variants
          #   @return [Array(String, Array<String>)]

          # @type [Privy::Internal::Type::Converter]
          StringArray = Privy::Internal::Type::ArrayOf[String]
        end

        # Named asset(s) to query (e.g. `eth`, `usdc`). Use together with `chain` to scope
        # the query. Cannot be used with `token`.
        module Asset
          extend Privy::Internal::Type::Union

          variant const: -> { Privy::Models::Wallets::BalanceGetParams::Asset::USDC }

          variant const: -> { Privy::Models::Wallets::BalanceGetParams::Asset::USDC_E }

          variant const: -> { Privy::Models::Wallets::BalanceGetParams::Asset::ETH }

          variant const: -> { Privy::Models::Wallets::BalanceGetParams::Asset::AVAX }

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
          AVAX = :avax
          POL = :pol
          USDT = :usdt
          EURC = :eurc
          USDB = :usdb
          SOL = :sol

          # @!endgroup

          # @type [Privy::Internal::Type::Converter]
          WalletAssetArray = Privy::Internal::Type::ArrayOf[enum: -> { Privy::WalletAsset }]
        end

        # Chain(s) to query named assets on (e.g. `base`, `ethereum`). Use together with
        # `asset`. Cannot be used with `token`.
        module Chain
          extend Privy::Internal::Type::Union

          # Supported blockchain network names for wallet balance and transaction queries.
          variant enum: -> { Privy::WalletAssetChainNameInput }

          variant -> { Privy::Models::Wallets::BalanceGetParams::Chain::WalletAssetChainNameInputArray }

          # @!method self.variants
          #   @return [Array(Symbol, Privy::Models::WalletAssetChainNameInput, Array<Symbol, Privy::Models::WalletAssetChainNameInput>)]

          # @type [Privy::Internal::Type::Converter]
          WalletAssetChainNameInputArray =
            Privy::Internal::Type::ArrayOf[enum: -> { Privy::WalletAssetChainNameInput }]
        end

        # If set, balances are converted to the specified fiat currency. Not supported
        # when `token` is provided.
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
