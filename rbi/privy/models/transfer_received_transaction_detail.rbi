# typed: strong

module Privy
  module Models
    class TransferReceivedTransactionDetail < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::TransferReceivedTransactionDetail,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(Privy::TransferReceivedTransactionDetail::Asset::Variants) }
      attr_accessor :asset

      sig do
        returns(Privy::TransferReceivedTransactionDetail::Chain::TaggedSymbol)
      end
      attr_accessor :chain

      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :display_values

      sig { returns(String) }
      attr_accessor :raw_value

      sig { returns(Float) }
      attr_accessor :raw_value_decimals

      sig { returns(String) }
      attr_accessor :recipient

      sig { returns(T.nilable(String)) }
      attr_accessor :recipient_privy_user_id

      sig { returns(String) }
      attr_accessor :sender

      sig { returns(T.nilable(String)) }
      attr_accessor :sender_privy_user_id

      sig do
        returns(Privy::TransferReceivedTransactionDetail::Type::TaggedSymbol)
      end
      attr_accessor :type

      # Details for a received transfer transaction.
      sig do
        params(
          asset:
            T.any(
              Privy::TransferReceivedTransactionDetail::Asset::OrSymbol,
              String
            ),
          chain: Privy::TransferReceivedTransactionDetail::Chain::OrSymbol,
          display_values: T::Hash[Symbol, String],
          raw_value: String,
          raw_value_decimals: Float,
          recipient: String,
          recipient_privy_user_id: T.nilable(String),
          sender: String,
          sender_privy_user_id: T.nilable(String),
          type: Privy::TransferReceivedTransactionDetail::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        asset:,
        chain:,
        display_values:,
        raw_value:,
        raw_value_decimals:,
        recipient:,
        recipient_privy_user_id:,
        sender:,
        sender_privy_user_id:,
        type:
      )
      end

      sig do
        override.returns(
          {
            asset: Privy::TransferReceivedTransactionDetail::Asset::Variants,
            chain:
              Privy::TransferReceivedTransactionDetail::Chain::TaggedSymbol,
            display_values: T::Hash[Symbol, String],
            raw_value: String,
            raw_value_decimals: Float,
            recipient: String,
            recipient_privy_user_id: T.nilable(String),
            sender: String,
            sender_privy_user_id: T.nilable(String),
            type: Privy::TransferReceivedTransactionDetail::Type::TaggedSymbol
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
              Privy::TransferReceivedTransactionDetail::Asset::TaggedSymbol,
              String
            )
          end

        sig do
          override.returns(
            T::Array[Privy::TransferReceivedTransactionDetail::Asset::Variants]
          )
        end
        def self.variants
        end

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::TransferReceivedTransactionDetail::Asset)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        USDC =
          T.let(
            :usdc,
            Privy::TransferReceivedTransactionDetail::Asset::TaggedSymbol
          )
        USDC_E =
          T.let(
            :"usdc.e",
            Privy::TransferReceivedTransactionDetail::Asset::TaggedSymbol
          )
        ETH =
          T.let(
            :eth,
            Privy::TransferReceivedTransactionDetail::Asset::TaggedSymbol
          )
        AVAX =
          T.let(
            :avax,
            Privy::TransferReceivedTransactionDetail::Asset::TaggedSymbol
          )
        POL =
          T.let(
            :pol,
            Privy::TransferReceivedTransactionDetail::Asset::TaggedSymbol
          )
        USDT =
          T.let(
            :usdt,
            Privy::TransferReceivedTransactionDetail::Asset::TaggedSymbol
          )
        EURC =
          T.let(
            :eurc,
            Privy::TransferReceivedTransactionDetail::Asset::TaggedSymbol
          )
        USDB =
          T.let(
            :usdb,
            Privy::TransferReceivedTransactionDetail::Asset::TaggedSymbol
          )
        SOL =
          T.let(
            :sol,
            Privy::TransferReceivedTransactionDetail::Asset::TaggedSymbol
          )
      end

      module Chain
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::TransferReceivedTransactionDetail::Chain)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ETHEREUM =
          T.let(
            :ethereum,
            Privy::TransferReceivedTransactionDetail::Chain::TaggedSymbol
          )
        ARBITRUM =
          T.let(
            :arbitrum,
            Privy::TransferReceivedTransactionDetail::Chain::TaggedSymbol
          )
        AVALANCHE =
          T.let(
            :avalanche,
            Privy::TransferReceivedTransactionDetail::Chain::TaggedSymbol
          )
        BASE =
          T.let(
            :base,
            Privy::TransferReceivedTransactionDetail::Chain::TaggedSymbol
          )
        TEMPO =
          T.let(
            :tempo,
            Privy::TransferReceivedTransactionDetail::Chain::TaggedSymbol
          )
        LINEA =
          T.let(
            :linea,
            Privy::TransferReceivedTransactionDetail::Chain::TaggedSymbol
          )
        OPTIMISM =
          T.let(
            :optimism,
            Privy::TransferReceivedTransactionDetail::Chain::TaggedSymbol
          )
        POLYGON =
          T.let(
            :polygon,
            Privy::TransferReceivedTransactionDetail::Chain::TaggedSymbol
          )
        SOLANA =
          T.let(
            :solana,
            Privy::TransferReceivedTransactionDetail::Chain::TaggedSymbol
          )
        ZKSYNC_ERA =
          T.let(
            :zksync_era,
            Privy::TransferReceivedTransactionDetail::Chain::TaggedSymbol
          )
        SEPOLIA =
          T.let(
            :sepolia,
            Privy::TransferReceivedTransactionDetail::Chain::TaggedSymbol
          )
        ARBITRUM_SEPOLIA =
          T.let(
            :arbitrum_sepolia,
            Privy::TransferReceivedTransactionDetail::Chain::TaggedSymbol
          )
        AVALANCHE_FUJI =
          T.let(
            :avalanche_fuji,
            Privy::TransferReceivedTransactionDetail::Chain::TaggedSymbol
          )
        BASE_SEPOLIA =
          T.let(
            :base_sepolia,
            Privy::TransferReceivedTransactionDetail::Chain::TaggedSymbol
          )
        LINEA_TESTNET =
          T.let(
            :linea_testnet,
            Privy::TransferReceivedTransactionDetail::Chain::TaggedSymbol
          )
        OPTIMISM_SEPOLIA =
          T.let(
            :optimism_sepolia,
            Privy::TransferReceivedTransactionDetail::Chain::TaggedSymbol
          )
        POLYGON_AMOY =
          T.let(
            :polygon_amoy,
            Privy::TransferReceivedTransactionDetail::Chain::TaggedSymbol
          )
        SOLANA_DEVNET =
          T.let(
            :solana_devnet,
            Privy::TransferReceivedTransactionDetail::Chain::TaggedSymbol
          )
        SOLANA_TESTNET =
          T.let(
            :solana_testnet,
            Privy::TransferReceivedTransactionDetail::Chain::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::TransferReceivedTransactionDetail::Chain::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::TransferReceivedTransactionDetail::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRANSFER_RECEIVED =
          T.let(
            :transfer_received,
            Privy::TransferReceivedTransactionDetail::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::TransferReceivedTransactionDetail::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
