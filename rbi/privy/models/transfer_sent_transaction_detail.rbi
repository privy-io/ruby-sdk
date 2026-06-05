# typed: strong

module Privy
  module Models
    class TransferSentTransactionDetail < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TransferSentTransactionDetail, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::TransferSentTransactionDetail::Asset::Variants) }
      attr_accessor :asset

      sig { returns(Privy::TransferSentTransactionDetail::Chain::TaggedSymbol) }
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

      sig { returns(Privy::TransferSentTransactionDetail::Type::TaggedSymbol) }
      attr_accessor :type

      # Details for a sent transfer transaction.
      sig do
        params(
          asset:
            T.any(
              Privy::TransferSentTransactionDetail::Asset::OrSymbol,
              String
            ),
          chain: Privy::TransferSentTransactionDetail::Chain::OrSymbol,
          display_values: T::Hash[Symbol, String],
          raw_value: String,
          raw_value_decimals: Float,
          recipient: String,
          recipient_privy_user_id: T.nilable(String),
          sender: String,
          sender_privy_user_id: T.nilable(String),
          type: Privy::TransferSentTransactionDetail::Type::OrSymbol
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
            asset: Privy::TransferSentTransactionDetail::Asset::Variants,
            chain: Privy::TransferSentTransactionDetail::Chain::TaggedSymbol,
            display_values: T::Hash[Symbol, String],
            raw_value: String,
            raw_value_decimals: Float,
            recipient: String,
            recipient_privy_user_id: T.nilable(String),
            sender: String,
            sender_privy_user_id: T.nilable(String),
            type: Privy::TransferSentTransactionDetail::Type::TaggedSymbol
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
              Privy::TransferSentTransactionDetail::Asset::TaggedSymbol,
              String
            )
          end

        sig do
          override.returns(
            T::Array[Privy::TransferSentTransactionDetail::Asset::Variants]
          )
        end
        def self.variants
        end

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::TransferSentTransactionDetail::Asset)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        USDC =
          T.let(
            :usdc,
            Privy::TransferSentTransactionDetail::Asset::TaggedSymbol
          )
        USDC_E =
          T.let(
            :"usdc.e",
            Privy::TransferSentTransactionDetail::Asset::TaggedSymbol
          )
        ETH =
          T.let(:eth, Privy::TransferSentTransactionDetail::Asset::TaggedSymbol)
        AVAX =
          T.let(
            :avax,
            Privy::TransferSentTransactionDetail::Asset::TaggedSymbol
          )
        POL =
          T.let(:pol, Privy::TransferSentTransactionDetail::Asset::TaggedSymbol)
        USDT =
          T.let(
            :usdt,
            Privy::TransferSentTransactionDetail::Asset::TaggedSymbol
          )
        EURC =
          T.let(
            :eurc,
            Privy::TransferSentTransactionDetail::Asset::TaggedSymbol
          )
        USDB =
          T.let(
            :usdb,
            Privy::TransferSentTransactionDetail::Asset::TaggedSymbol
          )
        SOL =
          T.let(:sol, Privy::TransferSentTransactionDetail::Asset::TaggedSymbol)
      end

      module Chain
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::TransferSentTransactionDetail::Chain)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ETHEREUM =
          T.let(
            :ethereum,
            Privy::TransferSentTransactionDetail::Chain::TaggedSymbol
          )
        ARBITRUM =
          T.let(
            :arbitrum,
            Privy::TransferSentTransactionDetail::Chain::TaggedSymbol
          )
        AVALANCHE =
          T.let(
            :avalanche,
            Privy::TransferSentTransactionDetail::Chain::TaggedSymbol
          )
        BASE =
          T.let(
            :base,
            Privy::TransferSentTransactionDetail::Chain::TaggedSymbol
          )
        TEMPO =
          T.let(
            :tempo,
            Privy::TransferSentTransactionDetail::Chain::TaggedSymbol
          )
        LINEA =
          T.let(
            :linea,
            Privy::TransferSentTransactionDetail::Chain::TaggedSymbol
          )
        OPTIMISM =
          T.let(
            :optimism,
            Privy::TransferSentTransactionDetail::Chain::TaggedSymbol
          )
        POLYGON =
          T.let(
            :polygon,
            Privy::TransferSentTransactionDetail::Chain::TaggedSymbol
          )
        SOLANA =
          T.let(
            :solana,
            Privy::TransferSentTransactionDetail::Chain::TaggedSymbol
          )
        ZKSYNC_ERA =
          T.let(
            :zksync_era,
            Privy::TransferSentTransactionDetail::Chain::TaggedSymbol
          )
        SEPOLIA =
          T.let(
            :sepolia,
            Privy::TransferSentTransactionDetail::Chain::TaggedSymbol
          )
        ARBITRUM_SEPOLIA =
          T.let(
            :arbitrum_sepolia,
            Privy::TransferSentTransactionDetail::Chain::TaggedSymbol
          )
        AVALANCHE_FUJI =
          T.let(
            :avalanche_fuji,
            Privy::TransferSentTransactionDetail::Chain::TaggedSymbol
          )
        BASE_SEPOLIA =
          T.let(
            :base_sepolia,
            Privy::TransferSentTransactionDetail::Chain::TaggedSymbol
          )
        LINEA_TESTNET =
          T.let(
            :linea_testnet,
            Privy::TransferSentTransactionDetail::Chain::TaggedSymbol
          )
        OPTIMISM_SEPOLIA =
          T.let(
            :optimism_sepolia,
            Privy::TransferSentTransactionDetail::Chain::TaggedSymbol
          )
        POLYGON_AMOY =
          T.let(
            :polygon_amoy,
            Privy::TransferSentTransactionDetail::Chain::TaggedSymbol
          )
        SOLANA_DEVNET =
          T.let(
            :solana_devnet,
            Privy::TransferSentTransactionDetail::Chain::TaggedSymbol
          )
        SOLANA_TESTNET =
          T.let(
            :solana_testnet,
            Privy::TransferSentTransactionDetail::Chain::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::TransferSentTransactionDetail::Chain::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::TransferSentTransactionDetail::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRANSFER_SENT =
          T.let(
            :transfer_sent,
            Privy::TransferSentTransactionDetail::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::TransferSentTransactionDetail::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
