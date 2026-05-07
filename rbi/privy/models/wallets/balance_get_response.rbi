# typed: strong

module Privy
  module Models
    module Wallets
      class BalanceGetResponse < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::Models::Wallets::BalanceGetResponse,
              Privy::Internal::AnyHash
            )
          end

        sig do
          returns(T::Array[Privy::Models::Wallets::BalanceGetResponse::Balance])
        end
        attr_accessor :balances

        sig do
          params(
            balances:
              T::Array[
                Privy::Models::Wallets::BalanceGetResponse::Balance::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(balances:)
        end

        sig do
          override.returns(
            {
              balances:
                T::Array[Privy::Models::Wallets::BalanceGetResponse::Balance]
            }
          )
        end
        def to_hash
        end

        class Balance < Privy::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Privy::Models::Wallets::BalanceGetResponse::Balance,
                Privy::Internal::AnyHash
              )
            end

          sig do
            returns(
              Privy::Models::Wallets::BalanceGetResponse::Balance::Asset::Variants
            )
          end
          attr_accessor :asset

          sig do
            returns(
              Privy::Models::Wallets::BalanceGetResponse::Balance::Chain::TaggedSymbol
            )
          end
          attr_accessor :chain

          sig { returns(T::Hash[Symbol, String]) }
          attr_accessor :display_values

          sig { returns(String) }
          attr_accessor :raw_value

          sig { returns(Float) }
          attr_accessor :raw_value_decimals

          sig do
            params(
              asset:
                T.any(
                  Privy::Models::Wallets::BalanceGetResponse::Balance::Asset::OrSymbol,
                  String
                ),
              chain:
                Privy::Models::Wallets::BalanceGetResponse::Balance::Chain::OrSymbol,
              display_values: T::Hash[Symbol, String],
              raw_value: String,
              raw_value_decimals: Float
            ).returns(T.attached_class)
          end
          def self.new(
            asset:,
            chain:,
            display_values:,
            raw_value:,
            raw_value_decimals:
          )
          end

          sig do
            override.returns(
              {
                asset:
                  Privy::Models::Wallets::BalanceGetResponse::Balance::Asset::Variants,
                chain:
                  Privy::Models::Wallets::BalanceGetResponse::Balance::Chain::TaggedSymbol,
                display_values: T::Hash[Symbol, String],
                raw_value: String,
                raw_value_decimals: Float
              }
            )
          end
          def to_hash
          end

          module Asset
            extend Privy::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  Privy::Models::Wallets::BalanceGetResponse::Balance::Asset::TaggedSymbol,
                  String
                )
              end

            sig do
              override.returns(
                T::Array[
                  Privy::Models::Wallets::BalanceGetResponse::Balance::Asset::Variants
                ]
              )
            end
            def self.variants
            end

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Privy::Models::Wallets::BalanceGetResponse::Balance::Asset
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            USDC =
              T.let(
                :usdc,
                Privy::Models::Wallets::BalanceGetResponse::Balance::Asset::TaggedSymbol
              )
            USDC_E =
              T.let(
                :"usdc.e",
                Privy::Models::Wallets::BalanceGetResponse::Balance::Asset::TaggedSymbol
              )
            ETH =
              T.let(
                :eth,
                Privy::Models::Wallets::BalanceGetResponse::Balance::Asset::TaggedSymbol
              )
            POL =
              T.let(
                :pol,
                Privy::Models::Wallets::BalanceGetResponse::Balance::Asset::TaggedSymbol
              )
            USDT =
              T.let(
                :usdt,
                Privy::Models::Wallets::BalanceGetResponse::Balance::Asset::TaggedSymbol
              )
            EURC =
              T.let(
                :eurc,
                Privy::Models::Wallets::BalanceGetResponse::Balance::Asset::TaggedSymbol
              )
            USDB =
              T.let(
                :usdb,
                Privy::Models::Wallets::BalanceGetResponse::Balance::Asset::TaggedSymbol
              )
            SOL =
              T.let(
                :sol,
                Privy::Models::Wallets::BalanceGetResponse::Balance::Asset::TaggedSymbol
              )
          end

          module Chain
            extend Privy::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Privy::Models::Wallets::BalanceGetResponse::Balance::Chain
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ETHEREUM =
              T.let(
                :ethereum,
                Privy::Models::Wallets::BalanceGetResponse::Balance::Chain::TaggedSymbol
              )
            ARBITRUM =
              T.let(
                :arbitrum,
                Privy::Models::Wallets::BalanceGetResponse::Balance::Chain::TaggedSymbol
              )
            BASE =
              T.let(
                :base,
                Privy::Models::Wallets::BalanceGetResponse::Balance::Chain::TaggedSymbol
              )
            TEMPO =
              T.let(
                :tempo,
                Privy::Models::Wallets::BalanceGetResponse::Balance::Chain::TaggedSymbol
              )
            LINEA =
              T.let(
                :linea,
                Privy::Models::Wallets::BalanceGetResponse::Balance::Chain::TaggedSymbol
              )
            OPTIMISM =
              T.let(
                :optimism,
                Privy::Models::Wallets::BalanceGetResponse::Balance::Chain::TaggedSymbol
              )
            POLYGON =
              T.let(
                :polygon,
                Privy::Models::Wallets::BalanceGetResponse::Balance::Chain::TaggedSymbol
              )
            SOLANA =
              T.let(
                :solana,
                Privy::Models::Wallets::BalanceGetResponse::Balance::Chain::TaggedSymbol
              )
            ZKSYNC_ERA =
              T.let(
                :zksync_era,
                Privy::Models::Wallets::BalanceGetResponse::Balance::Chain::TaggedSymbol
              )
            SEPOLIA =
              T.let(
                :sepolia,
                Privy::Models::Wallets::BalanceGetResponse::Balance::Chain::TaggedSymbol
              )
            ARBITRUM_SEPOLIA =
              T.let(
                :arbitrum_sepolia,
                Privy::Models::Wallets::BalanceGetResponse::Balance::Chain::TaggedSymbol
              )
            BASE_SEPOLIA =
              T.let(
                :base_sepolia,
                Privy::Models::Wallets::BalanceGetResponse::Balance::Chain::TaggedSymbol
              )
            LINEA_TESTNET =
              T.let(
                :linea_testnet,
                Privy::Models::Wallets::BalanceGetResponse::Balance::Chain::TaggedSymbol
              )
            OPTIMISM_SEPOLIA =
              T.let(
                :optimism_sepolia,
                Privy::Models::Wallets::BalanceGetResponse::Balance::Chain::TaggedSymbol
              )
            POLYGON_AMOY =
              T.let(
                :polygon_amoy,
                Privy::Models::Wallets::BalanceGetResponse::Balance::Chain::TaggedSymbol
              )
            SOLANA_DEVNET =
              T.let(
                :solana_devnet,
                Privy::Models::Wallets::BalanceGetResponse::Balance::Chain::TaggedSymbol
              )
            SOLANA_TESTNET =
              T.let(
                :solana_testnet,
                Privy::Models::Wallets::BalanceGetResponse::Balance::Chain::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Privy::Models::Wallets::BalanceGetResponse::Balance::Chain::TaggedSymbol
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
end
