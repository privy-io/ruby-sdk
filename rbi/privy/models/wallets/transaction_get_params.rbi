# typed: strong

module Privy
  module Models
    module Wallets
      class TransactionGetParams < Privy::Internal::Type::BaseModel
        extend Privy::Internal::Type::RequestParameters::Converter
        include Privy::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Privy::Wallets::TransactionGetParams,
              Privy::Internal::AnyHash
            )
          end

        # ID of the wallet.
        sig { returns(String) }
        attr_accessor :wallet_id

        sig { returns(Privy::Wallets::TransactionGetParams::Chain::OrSymbol) }
        attr_accessor :chain

        # Exactly one of `token` or `asset` is required. Cannot be used together with
        # `asset`.
        sig do
          returns(
            T.nilable(Privy::Wallets::TransactionGetParams::Token::Variants)
          )
        end
        attr_reader :token

        sig do
          params(
            token: Privy::Wallets::TransactionGetParams::Token::Variants
          ).void
        end
        attr_writer :token

        # Exactly one of `asset` or `token` is required. Cannot be used together with
        # `token`.
        sig do
          returns(
            T.nilable(
              T.any(
                Privy::Wallets::TransactionGetParams::Asset::OrSymbol,
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
                Privy::Wallets::TransactionGetParams::Asset::OrSymbol,
                T::Array[Privy::WalletAsset::OrSymbol]
              )
          ).void
        end
        attr_writer :asset

        sig { returns(T.nilable(String)) }
        attr_reader :cursor

        sig { params(cursor: String).void }
        attr_writer :cursor

        # Include archived wallets in lookup. Defaults to false.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_archived

        sig { params(include_archived: T::Boolean).void }
        attr_writer :include_archived

        sig { returns(T.nilable(Float)) }
        attr_accessor :limit

        sig { returns(T.nilable(String)) }
        attr_reader :tx_hash

        sig { params(tx_hash: String).void }
        attr_writer :tx_hash

        sig do
          params(
            wallet_id: String,
            chain: Privy::Wallets::TransactionGetParams::Chain::OrSymbol,
            token: Privy::Wallets::TransactionGetParams::Token::Variants,
            asset:
              T.any(
                Privy::Wallets::TransactionGetParams::Asset::OrSymbol,
                T::Array[Privy::WalletAsset::OrSymbol]
              ),
            cursor: String,
            include_archived: T::Boolean,
            limit: T.nilable(Float),
            tx_hash: String,
            request_options: Privy::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # ID of the wallet.
          wallet_id:,
          chain:,
          # Exactly one of `token` or `asset` is required. Cannot be used together with
          # `asset`.
          token: nil,
          # Exactly one of `asset` or `token` is required. Cannot be used together with
          # `token`.
          asset: nil,
          cursor: nil,
          # Include archived wallets in lookup. Defaults to false.
          include_archived: nil,
          limit: nil,
          tx_hash: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              wallet_id: String,
              chain: Privy::Wallets::TransactionGetParams::Chain::OrSymbol,
              token: Privy::Wallets::TransactionGetParams::Token::Variants,
              asset:
                T.any(
                  Privy::Wallets::TransactionGetParams::Asset::OrSymbol,
                  T::Array[Privy::WalletAsset::OrSymbol]
                ),
              cursor: String,
              include_archived: T::Boolean,
              limit: T.nilable(Float),
              tx_hash: String,
              request_options: Privy::RequestOptions
            }
          )
        end
        def to_hash
        end

        module Chain
          extend Privy::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Privy::Wallets::TransactionGetParams::Chain)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ETHEREUM =
            T.let(
              :ethereum,
              Privy::Wallets::TransactionGetParams::Chain::TaggedSymbol
            )
          ARBITRUM =
            T.let(
              :arbitrum,
              Privy::Wallets::TransactionGetParams::Chain::TaggedSymbol
            )
          BASE =
            T.let(
              :base,
              Privy::Wallets::TransactionGetParams::Chain::TaggedSymbol
            )
          TEMPO =
            T.let(
              :tempo,
              Privy::Wallets::TransactionGetParams::Chain::TaggedSymbol
            )
          LINEA =
            T.let(
              :linea,
              Privy::Wallets::TransactionGetParams::Chain::TaggedSymbol
            )
          OPTIMISM =
            T.let(
              :optimism,
              Privy::Wallets::TransactionGetParams::Chain::TaggedSymbol
            )
          POLYGON =
            T.let(
              :polygon,
              Privy::Wallets::TransactionGetParams::Chain::TaggedSymbol
            )
          SOLANA =
            T.let(
              :solana,
              Privy::Wallets::TransactionGetParams::Chain::TaggedSymbol
            )
          SEPOLIA =
            T.let(
              :sepolia,
              Privy::Wallets::TransactionGetParams::Chain::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Privy::Wallets::TransactionGetParams::Chain::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Exactly one of `token` or `asset` is required. Cannot be used together with
        # `asset`.
        module Token
          extend Privy::Internal::Type::Union

          Variants = T.type_alias { T.any(String, T::Array[String]) }

          sig do
            override.returns(
              T::Array[Privy::Wallets::TransactionGetParams::Token::Variants]
            )
          end
          def self.variants
          end

          TransactionTokenAddressInputArray =
            T.let(
              Privy::Internal::Type::ArrayOf[String],
              Privy::Internal::Type::Converter
            )
        end

        # Exactly one of `asset` or `token` is required. Cannot be used together with
        # `token`.
        module Asset
          extend Privy::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Privy::Wallets::TransactionGetParams::Asset::TaggedSymbol,
                T::Array[Privy::WalletAsset::TaggedSymbol]
              )
            end

          sig do
            override.returns(
              T::Array[Privy::Wallets::TransactionGetParams::Asset::Variants]
            )
          end
          def self.variants
          end

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Privy::Wallets::TransactionGetParams::Asset)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USDC =
            T.let(
              :usdc,
              Privy::Wallets::TransactionGetParams::Asset::TaggedSymbol
            )
          USDC_E =
            T.let(
              :"usdc.e",
              Privy::Wallets::TransactionGetParams::Asset::TaggedSymbol
            )
          ETH =
            T.let(
              :eth,
              Privy::Wallets::TransactionGetParams::Asset::TaggedSymbol
            )
          AVAX =
            T.let(
              :avax,
              Privy::Wallets::TransactionGetParams::Asset::TaggedSymbol
            )
          POL =
            T.let(
              :pol,
              Privy::Wallets::TransactionGetParams::Asset::TaggedSymbol
            )
          BNB =
            T.let(
              :bnb,
              Privy::Wallets::TransactionGetParams::Asset::TaggedSymbol
            )
          USDT =
            T.let(
              :usdt,
              Privy::Wallets::TransactionGetParams::Asset::TaggedSymbol
            )
          EURC =
            T.let(
              :eurc,
              Privy::Wallets::TransactionGetParams::Asset::TaggedSymbol
            )
          USDB =
            T.let(
              :usdb,
              Privy::Wallets::TransactionGetParams::Asset::TaggedSymbol
            )
          SOL =
            T.let(
              :sol,
              Privy::Wallets::TransactionGetParams::Asset::TaggedSymbol
            )
          TRX =
            T.let(
              :trx,
              Privy::Wallets::TransactionGetParams::Asset::TaggedSymbol
            )

          WalletAssetArray =
            T.let(
              Privy::Internal::Type::ArrayOf[enum: Privy::WalletAsset],
              Privy::Internal::Type::Converter
            )
        end
      end
    end
  end
end
