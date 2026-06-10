# frozen_string_literal: true

module Privy
  module Models
    class FundsDepositedWebhookPayload < Privy::Internal::Type::BaseModel
      # @!attribute amount
      #   The amount transferred, as a stringified bigint.
      #
      #   @return [String]
      required :amount, String

      # @!attribute asset
      #   An asset involved in a wallet transfer.
      #
      #   @return [Privy::Models::WalletFundsNativeTokenAsset, Privy::Models::WalletFundsErc20Asset, Privy::Models::WalletFundsSplAsset, Privy::Models::WalletFundsSacAsset]
      required :asset, union: -> { Privy::WalletFundsAsset }

      # @!attribute block
      #   Block metadata for a wallet transfer event.
      #
      #   @return [Privy::Models::BlockInfo]
      required :block, -> { Privy::BlockInfo }

      # @!attribute caip2
      #   The CAIP-2 chain identifier.
      #
      #   @return [String]
      required :caip2, String

      # @!attribute idempotency_key
      #   A unique key for this event.
      #
      #   @return [String]
      required :idempotency_key, String

      # @!attribute recipient
      #   The recipient address.
      #
      #   @return [String]
      required :recipient, String

      # @!attribute sender
      #   The sender address.
      #
      #   @return [String]
      required :sender, String

      # @!attribute transaction_hash
      #   The blockchain transaction hash.
      #
      #   @return [String]
      required :transaction_hash, String

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::FundsDepositedWebhookPayload::Type]
      required :type, enum: -> { Privy::FundsDepositedWebhookPayload::Type }

      # @!attribute wallet_id
      #   The ID of the wallet.
      #
      #   @return [String]
      required :wallet_id, String

      # @!attribute bridge_metadata
      #   Metadata about a Bridge transaction associated with a wallet event.
      #
      #   @return [Privy::Models::BridgeCryptoDepositMetadata, Privy::Models::BridgeRefundMetadata, Privy::Models::BridgeFiatDepositMetadata, Privy::Models::BridgeCryptoTransferMetadata, Privy::Models::BridgeFiatTransferMetadata, Privy::Models::BridgeTransferRefundMetadata, Privy::Models::BridgeStaticMemoDepositMetadata, nil]
      optional :bridge_metadata, union: -> { Privy::BridgeMetadata }

      # @!attribute transaction_fee
      #   The transaction fee paid, as a stringified bigint in the chain's native token.
      #
      #   @return [String, nil]
      optional :transaction_fee, String

      # @!method initialize(amount:, asset:, block:, caip2:, idempotency_key:, recipient:, sender:, transaction_hash:, type:, wallet_id:, bridge_metadata: nil, transaction_fee: nil)
      #   Payload for the wallet.funds_deposited webhook event.
      #
      #   @param amount [String] The amount transferred, as a stringified bigint.
      #
      #   @param asset [Privy::Models::WalletFundsNativeTokenAsset, Privy::Models::WalletFundsErc20Asset, Privy::Models::WalletFundsSplAsset, Privy::Models::WalletFundsSacAsset] An asset involved in a wallet transfer.
      #
      #   @param block [Privy::Models::BlockInfo] Block metadata for a wallet transfer event.
      #
      #   @param caip2 [String] The CAIP-2 chain identifier.
      #
      #   @param idempotency_key [String] A unique key for this event.
      #
      #   @param recipient [String] The recipient address.
      #
      #   @param sender [String] The sender address.
      #
      #   @param transaction_hash [String] The blockchain transaction hash.
      #
      #   @param type [Symbol, Privy::Models::FundsDepositedWebhookPayload::Type] The type of webhook event.
      #
      #   @param wallet_id [String] The ID of the wallet.
      #
      #   @param bridge_metadata [Privy::Models::BridgeCryptoDepositMetadata, Privy::Models::BridgeRefundMetadata, Privy::Models::BridgeFiatDepositMetadata, Privy::Models::BridgeCryptoTransferMetadata, Privy::Models::BridgeFiatTransferMetadata, Privy::Models::BridgeTransferRefundMetadata, Privy::Models::BridgeStaticMemoDepositMetadata] Metadata about a Bridge transaction associated with a wallet event.
      #
      #   @param transaction_fee [String] The transaction fee paid, as a stringified bigint in the chain's native token.

      # The type of webhook event.
      #
      # @see Privy::Models::FundsDepositedWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        WALLET_FUNDS_DEPOSITED = :"wallet.funds_deposited"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
