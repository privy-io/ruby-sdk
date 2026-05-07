# typed: strong

module Privy
  module Models
    class FundsDepositedWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::FundsDepositedWebhookPayload, Privy::Internal::AnyHash)
        end

      # The amount transferred, as a stringified bigint.
      sig { returns(String) }
      attr_accessor :amount

      # An asset involved in a wallet transfer.
      sig { returns(Privy::WalletFundsAsset::Variants) }
      attr_accessor :asset

      sig { returns(Privy::FundsDepositedWebhookPayload::Block) }
      attr_reader :block

      sig do
        params(block: Privy::FundsDepositedWebhookPayload::Block::OrHash).void
      end
      attr_writer :block

      # The CAIP-2 chain identifier.
      sig { returns(String) }
      attr_accessor :caip2

      # A unique key for this event.
      sig { returns(String) }
      attr_accessor :idempotency_key

      # The recipient address.
      sig { returns(String) }
      attr_accessor :recipient

      # The sender address.
      sig { returns(String) }
      attr_accessor :sender

      # The blockchain transaction hash.
      sig { returns(String) }
      attr_accessor :transaction_hash

      # The type of webhook event.
      sig { returns(Privy::FundsDepositedWebhookPayload::Type::TaggedSymbol) }
      attr_accessor :type

      # The ID of the wallet.
      sig { returns(String) }
      attr_accessor :wallet_id

      # Metadata about a Bridge transaction associated with a wallet event.
      sig { returns(T.nilable(Privy::BridgeMetadata::Variants)) }
      attr_reader :bridge_metadata

      sig do
        params(
          bridge_metadata:
            T.any(
              Privy::BridgeCryptoDepositMetadata::OrHash,
              Privy::BridgeRefundMetadata::OrHash,
              Privy::BridgeFiatDepositMetadata::OrHash,
              Privy::BridgeCryptoTransferMetadata::OrHash,
              Privy::BridgeFiatTransferMetadata::OrHash,
              Privy::BridgeTransferRefundMetadata::OrHash,
              Privy::BridgeStaticMemoDepositMetadata::OrHash
            )
        ).void
      end
      attr_writer :bridge_metadata

      # The transaction fee paid, as a stringified bigint in the chain's native token.
      sig { returns(T.nilable(String)) }
      attr_reader :transaction_fee

      sig { params(transaction_fee: String).void }
      attr_writer :transaction_fee

      # Payload for the wallet.funds_deposited webhook event.
      sig do
        params(
          amount: String,
          asset:
            T.any(
              Privy::WalletFundsNativeTokenAsset::OrHash,
              Privy::WalletFundsErc20Asset::OrHash,
              Privy::WalletFundsSplAsset::OrHash,
              Privy::WalletFundsSacAsset::OrHash
            ),
          block: Privy::FundsDepositedWebhookPayload::Block::OrHash,
          caip2: String,
          idempotency_key: String,
          recipient: String,
          sender: String,
          transaction_hash: String,
          type: Privy::FundsDepositedWebhookPayload::Type::OrSymbol,
          wallet_id: String,
          bridge_metadata:
            T.any(
              Privy::BridgeCryptoDepositMetadata::OrHash,
              Privy::BridgeRefundMetadata::OrHash,
              Privy::BridgeFiatDepositMetadata::OrHash,
              Privy::BridgeCryptoTransferMetadata::OrHash,
              Privy::BridgeFiatTransferMetadata::OrHash,
              Privy::BridgeTransferRefundMetadata::OrHash,
              Privy::BridgeStaticMemoDepositMetadata::OrHash
            ),
          transaction_fee: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The amount transferred, as a stringified bigint.
        amount:,
        # An asset involved in a wallet transfer.
        asset:,
        block:,
        # The CAIP-2 chain identifier.
        caip2:,
        # A unique key for this event.
        idempotency_key:,
        # The recipient address.
        recipient:,
        # The sender address.
        sender:,
        # The blockchain transaction hash.
        transaction_hash:,
        # The type of webhook event.
        type:,
        # The ID of the wallet.
        wallet_id:,
        # Metadata about a Bridge transaction associated with a wallet event.
        bridge_metadata: nil,
        # The transaction fee paid, as a stringified bigint in the chain's native token.
        transaction_fee: nil
      )
      end

      sig do
        override.returns(
          {
            amount: String,
            asset: Privy::WalletFundsAsset::Variants,
            block: Privy::FundsDepositedWebhookPayload::Block,
            caip2: String,
            idempotency_key: String,
            recipient: String,
            sender: String,
            transaction_hash: String,
            type: Privy::FundsDepositedWebhookPayload::Type::TaggedSymbol,
            wallet_id: String,
            bridge_metadata: Privy::BridgeMetadata::Variants,
            transaction_fee: String
          }
        )
      end
      def to_hash
      end

      class Block < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::FundsDepositedWebhookPayload::Block,
              Privy::Internal::AnyHash
            )
          end

        # The block number.
        sig { returns(Float) }
        attr_accessor :number

        # The block timestamp.
        sig { returns(Float) }
        attr_accessor :timestamp

        sig do
          params(number: Float, timestamp: Float).returns(T.attached_class)
        end
        def self.new(
          # The block number.
          number:,
          # The block timestamp.
          timestamp:
        )
        end

        sig { override.returns({ number: Float, timestamp: Float }) }
        def to_hash
        end
      end

      # The type of webhook event.
      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::FundsDepositedWebhookPayload::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WALLET_FUNDS_DEPOSITED =
          T.let(
            :"wallet.funds_deposited",
            Privy::FundsDepositedWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::FundsDepositedWebhookPayload::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
