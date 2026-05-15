# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      # @see Privy::Resources::Wallets::Transactions#get
      class TransactionGetParams < Privy::Internal::Type::BaseModel
        extend Privy::Internal::Type::RequestParameters::Converter
        include Privy::Internal::Type::RequestParameters

        # @!attribute wallet_id
        #   ID of the wallet.
        #
        #   @return [String]
        required :wallet_id, String

        # @!attribute chain
        #
        #   @return [Symbol, Privy::Models::Wallets::TransactionGetParams::Chain]
        required :chain, enum: -> { Privy::Wallets::TransactionGetParams::Chain }

        # @!attribute token
        #   Exactly one of `token` or `asset` is required. Cannot be used together with
        #   `asset`.
        #
        #   @return [String, Array<String>, nil]
        optional :token, union: -> { Privy::Wallets::TransactionGetParams::Token }

        # @!attribute asset
        #   Exactly one of `asset` or `token` is required. Cannot be used together with
        #   `token`.
        #
        #   @return [Symbol, Array<Symbol, Privy::Models::WalletAsset>, Privy::Models::Wallets::TransactionGetParams::Asset, nil]
        optional :asset, union: -> { Privy::Wallets::TransactionGetParams::Asset }

        # @!attribute cursor
        #
        #   @return [String, nil]
        optional :cursor, String

        # @!attribute limit
        #
        #   @return [Float, nil]
        optional :limit, Float, nil?: true

        # @!attribute tx_hash
        #
        #   @return [String, nil]
        optional :tx_hash, String

        # @!method initialize(wallet_id:, chain:, token: nil, asset: nil, cursor: nil, limit: nil, tx_hash: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Privy::Models::Wallets::TransactionGetParams} for more details.
        #
        #   @param wallet_id [String] ID of the wallet.
        #
        #   @param chain [Symbol, Privy::Models::Wallets::TransactionGetParams::Chain]
        #
        #   @param token [String, Array<String>] Exactly one of `token` or `asset` is required. Cannot be used together with `ass
        #
        #   @param asset [Symbol, Array<Symbol, Privy::Models::WalletAsset>, Privy::Models::Wallets::TransactionGetParams::Asset] Exactly one of `asset` or `token` is required. Cannot be used together with `tok
        #
        #   @param cursor [String]
        #
        #   @param limit [Float, nil]
        #
        #   @param tx_hash [String]
        #
        #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]

        module Chain
          extend Privy::Internal::Type::Enum

          ETHEREUM = :ethereum
          ARBITRUM = :arbitrum
          BASE = :base
          TEMPO = :tempo
          LINEA = :linea
          OPTIMISM = :optimism
          POLYGON = :polygon
          SOLANA = :solana
          SEPOLIA = :sepolia

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Exactly one of `token` or `asset` is required. Cannot be used together with
        # `asset`.
        module Token
          extend Privy::Internal::Type::Union

          # Token contract address (EVM: 0x-prefixed hex) or mint address (Solana: base58), used to filter wallet transactions.
          variant -> { Privy::TransactionTokenAddressInput }

          variant -> { Privy::Models::Wallets::TransactionGetParams::Token::TransactionTokenAddressInputArray }

          # @!method self.variants
          #   @return [Array(String, Array<String>)]

          # @type [Privy::Internal::Type::Converter]
          TransactionTokenAddressInputArray = Privy::Internal::Type::ArrayOf[String]
        end

        # Exactly one of `asset` or `token` is required. Cannot be used together with
        # `token`.
        module Asset
          extend Privy::Internal::Type::Union

          variant const: -> { Privy::Models::Wallets::TransactionGetParams::Asset::USDC }

          variant const: -> { Privy::Models::Wallets::TransactionGetParams::Asset::USDC_E }

          variant const: -> { Privy::Models::Wallets::TransactionGetParams::Asset::ETH }

          variant const: -> { Privy::Models::Wallets::TransactionGetParams::Asset::POL }

          variant const: -> { Privy::Models::Wallets::TransactionGetParams::Asset::USDT }

          variant const: -> { Privy::Models::Wallets::TransactionGetParams::Asset::EURC }

          variant const: -> { Privy::Models::Wallets::TransactionGetParams::Asset::USDB }

          variant const: -> { Privy::Models::Wallets::TransactionGetParams::Asset::SOL }

          variant -> { Privy::Models::Wallets::TransactionGetParams::Asset::WalletAssetArray }

          # @!method self.variants
          #   @return [Array(Symbol, Array<Symbol, Privy::Models::WalletAsset>)]

          define_sorbet_constant!(:Variants) do
            T.type_alias do
              T.any(
                Privy::Wallets::TransactionGetParams::Asset::TaggedSymbol,
                T::Array[Privy::WalletAsset::TaggedSymbol]
              )
            end
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
      end
    end
  end
end
