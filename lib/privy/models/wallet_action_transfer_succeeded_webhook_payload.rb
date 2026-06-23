# frozen_string_literal: true

module Privy
  module Models
    class WalletActionTransferSucceededWebhookPayload < Privy::Internal::Type::BaseModel
      # @!attribute action_type
      #   Type of wallet action
      #
      #   @return [Symbol, Privy::Models::WalletActionType]
      required :action_type, enum: -> { Privy::WalletActionType }

      # @!attribute completed_at
      #   ISO 8601 timestamp of when the wallet action completed successfully.
      #
      #   @return [String]
      required :completed_at, String

      # @!attribute created_at
      #   ISO 8601 timestamp of when the wallet action was created.
      #
      #   @return [String]
      required :created_at, String

      # @!attribute destination_address
      #   Recipient address.
      #
      #   @return [String]
      required :destination_address, String

      # @!attribute source_chain
      #   Chain name (e.g. "base", "ethereum").
      #
      #   @return [String]
      required :source_chain, String

      # @!attribute status
      #   The status of the wallet action.
      #
      #   @return [Symbol, Privy::Models::WalletActionTransferSucceededWebhookPayload::Status]
      required :status, enum: -> { Privy::WalletActionTransferSucceededWebhookPayload::Status }

      # @!attribute steps
      #   The steps of the wallet action, including transaction hashes.
      #
      #   @return [Array<Privy::Models::EvmTransactionWalletActionStep, Privy::Models::EvmUserOperationWalletActionStep, Privy::Models::SvmTransactionWalletActionStep, Privy::Models::TvmTransactionWalletActionStep, Privy::Models::ExternalTransactionWalletActionStep, Privy::Models::CustodianTransactionWalletActionStep>]
      required :steps, -> { Privy::Internal::Type::ArrayOf[union: Privy::WalletActionStep] }

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::WalletActionTransferSucceededWebhookPayload::Type]
      required :type, enum: -> { Privy::WalletActionTransferSucceededWebhookPayload::Type }

      # @!attribute wallet_action_id
      #   The ID of the wallet action.
      #
      #   @return [String]
      required :wallet_action_id, String

      # @!attribute wallet_id
      #   The ID of the wallet involved in the action.
      #
      #   @return [String]
      required :wallet_id, String

      # @!attribute source_amount
      #   Decimal amount sent on the source chain (e.g. "1.5"). Omitted for exact_output
      #   cross-chain transfers until the source amount is determined.
      #
      #   @return [String, nil]
      optional :source_amount, String

      # @!attribute source_asset
      #   Asset identifier (e.g. "usdc", "eth"). Present when the transfer was initiated
      #   with a named asset; omitted for custom-token transfers.
      #
      #   @return [String, nil]
      optional :source_asset, String

      # @!attribute source_asset_address
      #   Token contract address (EVM) or mint address (Solana). Present when the transfer
      #   was initiated with `asset_address`.
      #
      #   @return [String, nil]
      optional :source_asset_address, String

      # @!attribute source_asset_decimals
      #   Number of decimals for the transferred token. Present when the transfer was
      #   initiated with `asset_address` and the decimals were resolved onchain.
      #
      #   @return [Integer, nil]
      optional :source_asset_decimals, Integer

      # @!method initialize(action_type:, completed_at:, created_at:, destination_address:, source_chain:, status:, steps:, type:, wallet_action_id:, wallet_id:, source_amount: nil, source_asset: nil, source_asset_address: nil, source_asset_decimals: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::WalletActionTransferSucceededWebhookPayload} for more details.
      #
      #   Payload for the wallet_action.transfer.succeeded webhook event.
      #
      #   @param action_type [Symbol, Privy::Models::WalletActionType] Type of wallet action
      #
      #   @param completed_at [String] ISO 8601 timestamp of when the wallet action completed successfully.
      #
      #   @param created_at [String] ISO 8601 timestamp of when the wallet action was created.
      #
      #   @param destination_address [String] Recipient address.
      #
      #   @param source_chain [String] Chain name (e.g. "base", "ethereum").
      #
      #   @param status [Symbol, Privy::Models::WalletActionTransferSucceededWebhookPayload::Status] The status of the wallet action.
      #
      #   @param steps [Array<Privy::Models::EvmTransactionWalletActionStep, Privy::Models::EvmUserOperationWalletActionStep, Privy::Models::SvmTransactionWalletActionStep, Privy::Models::TvmTransactionWalletActionStep, Privy::Models::ExternalTransactionWalletActionStep, Privy::Models::CustodianTransactionWalletActionStep>] The steps of the wallet action, including transaction hashes.
      #
      #   @param type [Symbol, Privy::Models::WalletActionTransferSucceededWebhookPayload::Type] The type of webhook event.
      #
      #   @param wallet_action_id [String] The ID of the wallet action.
      #
      #   @param wallet_id [String] The ID of the wallet involved in the action.
      #
      #   @param source_amount [String] Decimal amount sent on the source chain (e.g. "1.5"). Omitted for exact_output c
      #
      #   @param source_asset [String] Asset identifier (e.g. "usdc", "eth"). Present when the transfer was initiated w
      #
      #   @param source_asset_address [String] Token contract address (EVM) or mint address (Solana). Present when the transfer
      #
      #   @param source_asset_decimals [Integer] Number of decimals for the transferred token. Present when the transfer was init

      # The status of the wallet action.
      #
      # @see Privy::Models::WalletActionTransferSucceededWebhookPayload#status
      module Status
        extend Privy::Internal::Type::Enum

        SUCCEEDED = :succeeded

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The type of webhook event.
      #
      # @see Privy::Models::WalletActionTransferSucceededWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        WALLET_ACTION_TRANSFER_SUCCEEDED = :"wallet_action.transfer.succeeded"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
