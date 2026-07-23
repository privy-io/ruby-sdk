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
          #   Supported blockchain network names for wallet balance and transaction queries.
          #
          #   @return [Symbol, Privy::Models::WalletAssetChainNameInput]
          required :chain, enum: -> { Privy::WalletAssetChainNameInput }

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
          #
          #   @param chain [Symbol, Privy::Models::WalletAssetChainNameInput] Supported blockchain network names for wallet balance and transaction queries.
          #
          #   @param display_values [Hash{Symbol=>String}]
          #
          #   @param raw_value [String]
          #
          #   @param raw_value_decimals [Float]

          # @see Privy::Models::Wallets::BalanceGetResponse::Balance#asset
          module Asset
            extend Privy::Internal::Type::Union

            variant const: -> { Privy::Models::Wallets::BalanceGetResponse::Balance::Asset::USDC }

            variant const: -> { Privy::Models::Wallets::BalanceGetResponse::Balance::Asset::USDC_E }

            variant const: -> { Privy::Models::Wallets::BalanceGetResponse::Balance::Asset::ETH }

            variant const: -> { Privy::Models::Wallets::BalanceGetResponse::Balance::Asset::AVAX }

            variant const: -> { Privy::Models::Wallets::BalanceGetResponse::Balance::Asset::POL }

            variant const: -> { Privy::Models::Wallets::BalanceGetResponse::Balance::Asset::BNB }

            variant const: -> { Privy::Models::Wallets::BalanceGetResponse::Balance::Asset::USDT }

            variant const: -> { Privy::Models::Wallets::BalanceGetResponse::Balance::Asset::EURC }

            variant const: -> { Privy::Models::Wallets::BalanceGetResponse::Balance::Asset::USDB }

            variant const: -> { Privy::Models::Wallets::BalanceGetResponse::Balance::Asset::PATHUSD }

            variant const: -> { Privy::Models::Wallets::BalanceGetResponse::Balance::Asset::SOL }

            variant const: -> { Privy::Models::Wallets::BalanceGetResponse::Balance::Asset::TRX }

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
            BNB = :bnb
            USDT = :usdt
            EURC = :eurc
            USDB = :usdb
            PATHUSD = :pathusd
            SOL = :sol
            TRX = :trx

            # @!endgroup
          end
        end
      end
    end
  end
end
