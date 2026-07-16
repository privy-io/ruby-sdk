# typed: strong

module Privy
  module Models
    module Wallets
      class BalanceGetParams < Privy::Internal::Type::BaseModel
        extend Privy::Internal::Type::RequestParameters::Converter
        include Privy::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Privy::Wallets::BalanceGetParams, Privy::Internal::AnyHash)
          end

        # ID of the wallet.
        sig { returns(String) }
        attr_accessor :wallet_id

        # The token contract address(es) to query in format "chain:address" (e.g.,
        # "tempo:0x20c000000000000000000000b9537d11c60e8b50" or
        # "solana:EPjFWdd5AufqSSqeM2qN1xzybapC8G4wEGGkZwyTDt1v"). Cannot be used together
        # with `asset`/`chain` or with `include_currency`.
        sig do
          returns(T.nilable(Privy::Wallets::BalanceGetParams::Token::Variants))
        end
        attr_reader :token

        sig do
          params(token: Privy::Wallets::BalanceGetParams::Token::Variants).void
        end
        attr_writer :token

        # Named asset(s) to query (e.g. `eth`, `usdc`). Use together with `chain` to scope
        # the query. Cannot be used with `token`.
        sig do
          returns(
            T.nilable(
              T.any(
                Privy::Wallets::BalanceGetParams::Asset::OrSymbol,
                T::Array[Privy::WalletAsset::OrSymbol]
              )
            )
          )
        end
        attr_reader :asset

        sig do
          params(
            asset:
              T.any(
                Privy::Wallets::BalanceGetParams::Asset::OrSymbol,
                T::Array[Privy::WalletAsset::OrSymbol]
              )
          ).void
        end
        attr_writer :asset

        # Chain(s) to query named assets on (e.g. `tempo`, `base`). Use together with
        # `asset`. Cannot be used with `token`.
        sig do
          returns(
            T.nilable(
              T.any(
                Privy::WalletAssetChainNameInput::OrSymbol,
                T::Array[Privy::WalletAssetChainNameInput::OrSymbol]
              )
            )
          )
        end
        attr_reader :chain

        sig do
          params(
            chain:
              T.any(
                Privy::WalletAssetChainNameInput::OrSymbol,
                T::Array[Privy::WalletAssetChainNameInput::OrSymbol]
              )
          ).void
        end
        attr_writer :chain

        # Include archived wallets in lookup. Defaults to false.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_archived

        sig { params(include_archived: T::Boolean).void }
        attr_writer :include_archived

        # If set, balances are converted to the specified fiat currency. Not supported
        # when `token` is provided.
        sig do
          returns(
            T.nilable(
              Privy::Wallets::BalanceGetParams::IncludeCurrency::OrSymbol
            )
          )
        end
        attr_reader :include_currency

        sig do
          params(
            include_currency:
              Privy::Wallets::BalanceGetParams::IncludeCurrency::OrSymbol
          ).void
        end
        attr_writer :include_currency

        sig do
          params(
            wallet_id: String,
            token: Privy::Wallets::BalanceGetParams::Token::Variants,
            asset:
              T.any(
                Privy::Wallets::BalanceGetParams::Asset::OrSymbol,
                T::Array[Privy::WalletAsset::OrSymbol]
              ),
            chain:
              T.any(
                Privy::WalletAssetChainNameInput::OrSymbol,
                T::Array[Privy::WalletAssetChainNameInput::OrSymbol]
              ),
            include_archived: T::Boolean,
            include_currency:
              Privy::Wallets::BalanceGetParams::IncludeCurrency::OrSymbol,
            request_options: Privy::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # ID of the wallet.
          wallet_id:,
          # The token contract address(es) to query in format "chain:address" (e.g.,
          # "tempo:0x20c000000000000000000000b9537d11c60e8b50" or
          # "solana:EPjFWdd5AufqSSqeM2qN1xzybapC8G4wEGGkZwyTDt1v"). Cannot be used together
          # with `asset`/`chain` or with `include_currency`.
          token: nil,
          # Named asset(s) to query (e.g. `eth`, `usdc`). Use together with `chain` to scope
          # the query. Cannot be used with `token`.
          asset: nil,
          # Chain(s) to query named assets on (e.g. `tempo`, `base`). Use together with
          # `asset`. Cannot be used with `token`.
          chain: nil,
          # Include archived wallets in lookup. Defaults to false.
          include_archived: nil,
          # If set, balances are converted to the specified fiat currency. Not supported
          # when `token` is provided.
          include_currency: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              wallet_id: String,
              token: Privy::Wallets::BalanceGetParams::Token::Variants,
              asset:
                T.any(
                  Privy::Wallets::BalanceGetParams::Asset::OrSymbol,
                  T::Array[Privy::WalletAsset::OrSymbol]
                ),
              chain:
                T.any(
                  Privy::WalletAssetChainNameInput::OrSymbol,
                  T::Array[Privy::WalletAssetChainNameInput::OrSymbol]
                ),
              include_archived: T::Boolean,
              include_currency:
                Privy::Wallets::BalanceGetParams::IncludeCurrency::OrSymbol,
              request_options: Privy::RequestOptions
            }
          )
        end
        def to_hash
        end

        # The token contract address(es) to query in format "chain:address" (e.g.,
        # "tempo:0x20c000000000000000000000b9537d11c60e8b50" or
        # "solana:EPjFWdd5AufqSSqeM2qN1xzybapC8G4wEGGkZwyTDt1v"). Cannot be used together
        # with `asset`/`chain` or with `include_currency`.
        module Token
          extend Privy::Internal::Type::Union

          Variants = T.type_alias { T.any(String, T::Array[String]) }

          sig do
            override.returns(
              T::Array[Privy::Wallets::BalanceGetParams::Token::Variants]
            )
          end
          def self.variants
          end

          StringArray =
            T.let(
              Privy::Internal::Type::ArrayOf[String],
              Privy::Internal::Type::Converter
            )
        end

        # Named asset(s) to query (e.g. `eth`, `usdc`). Use together with `chain` to scope
        # the query. Cannot be used with `token`.
        module Asset
          extend Privy::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Privy::Wallets::BalanceGetParams::Asset::TaggedSymbol,
                T::Array[Privy::WalletAsset::TaggedSymbol]
              )
            end

          sig do
            override.returns(
              T::Array[Privy::Wallets::BalanceGetParams::Asset::Variants]
            )
          end
          def self.variants
          end

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Privy::Wallets::BalanceGetParams::Asset)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USDC =
            T.let(:usdc, Privy::Wallets::BalanceGetParams::Asset::TaggedSymbol)
          USDC_E =
            T.let(
              :"usdc.e",
              Privy::Wallets::BalanceGetParams::Asset::TaggedSymbol
            )
          ETH =
            T.let(:eth, Privy::Wallets::BalanceGetParams::Asset::TaggedSymbol)
          AVAX =
            T.let(:avax, Privy::Wallets::BalanceGetParams::Asset::TaggedSymbol)
          POL =
            T.let(:pol, Privy::Wallets::BalanceGetParams::Asset::TaggedSymbol)
          BNB =
            T.let(:bnb, Privy::Wallets::BalanceGetParams::Asset::TaggedSymbol)
          USDT =
            T.let(:usdt, Privy::Wallets::BalanceGetParams::Asset::TaggedSymbol)
          EURC =
            T.let(:eurc, Privy::Wallets::BalanceGetParams::Asset::TaggedSymbol)
          USDB =
            T.let(:usdb, Privy::Wallets::BalanceGetParams::Asset::TaggedSymbol)
          SOL =
            T.let(:sol, Privy::Wallets::BalanceGetParams::Asset::TaggedSymbol)
          TRX =
            T.let(:trx, Privy::Wallets::BalanceGetParams::Asset::TaggedSymbol)

          WalletAssetArray =
            T.let(
              Privy::Internal::Type::ArrayOf[enum: Privy::WalletAsset],
              Privy::Internal::Type::Converter
            )
        end

        # Chain(s) to query named assets on (e.g. `tempo`, `base`). Use together with
        # `asset`. Cannot be used with `token`.
        module Chain
          extend Privy::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Privy::WalletAssetChainNameInput::TaggedSymbol,
                T::Array[Privy::WalletAssetChainNameInput::TaggedSymbol]
              )
            end

          sig do
            override.returns(
              T::Array[Privy::Wallets::BalanceGetParams::Chain::Variants]
            )
          end
          def self.variants
          end

          WalletAssetChainNameInputArray =
            T.let(
              Privy::Internal::Type::ArrayOf[
                enum: Privy::WalletAssetChainNameInput
              ],
              Privy::Internal::Type::Converter
            )
        end

        # If set, balances are converted to the specified fiat currency. Not supported
        # when `token` is provided.
        module IncludeCurrency
          extend Privy::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Privy::Wallets::BalanceGetParams::IncludeCurrency)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USD =
            T.let(
              :usd,
              Privy::Wallets::BalanceGetParams::IncludeCurrency::TaggedSymbol
            )
          EUR =
            T.let(
              :eur,
              Privy::Wallets::BalanceGetParams::IncludeCurrency::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Privy::Wallets::BalanceGetParams::IncludeCurrency::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
