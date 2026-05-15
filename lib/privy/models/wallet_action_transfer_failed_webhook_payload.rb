# frozen_string_literal: true

module Privy
  module Models
    class WalletActionTransferFailedWebhookPayload < Privy::Internal::Type::BaseModel
      # @!attribute action_type
      #   Type of wallet action
      #
      #   @return [Symbol, Privy::Models::WalletActionType]
      required :action_type, enum: -> { Privy::WalletActionType }

      # @!attribute destination_address
      #   Recipient address.
      #
      #   @return [String]
      required :destination_address, String

      # @!attribute failure_reason
      #   A description of why a wallet action (or a step within a wallet action) failed.
      #
      #   @return [Privy::Models::FailureReason]
      required :failure_reason, -> { Privy::FailureReason }

      # @!attribute source_chain
      #   Chain name (e.g. "base", "ethereum").
      #
      #   @return [String]
      required :source_chain, String

      # @!attribute status
      #   The status of the wallet action.
      #
      #   @return [Symbol, Privy::Models::WalletActionTransferFailedWebhookPayload::Status]
      required :status, enum: -> { Privy::WalletActionTransferFailedWebhookPayload::Status }

      # @!attribute steps
      #   The steps of the wallet action. Completed steps will have transaction hashes;
      #   the failing step will have a failure_reason.
      #
      #   @return [Array<Privy::Models::EvmTransactionWalletActionStep, Privy::Models::EvmUserOperationWalletActionStep, Privy::Models::SvmTransactionWalletActionStep, Privy::Models::ExternalTransactionWalletActionStep>]
      required :steps, -> { Privy::Internal::Type::ArrayOf[union: Privy::WalletActionStep] }

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::WalletActionTransferFailedWebhookPayload::Type]
      required :type, enum: -> { Privy::WalletActionTransferFailedWebhookPayload::Type }

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
      #   initiated with `asset_address` and the decimals were resolved on-chain.
      #
      #   @return [Integer, nil]
      optional :source_asset_decimals, Integer

      # @!method initialize(action_type:, destination_address:, failure_reason:, source_chain:, status:, steps:, type:, wallet_action_id:, wallet_id:, source_amount: nil, source_asset: nil, source_asset_address: nil, source_asset_decimals: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::WalletActionTransferFailedWebhookPayload} for more details.
      #
      #   Payload for the wallet_action.transfer.failed webhook event.
      #
      #   @param action_type [Symbol, Privy::Models::WalletActionType] Type of wallet action
      #
      #   @param destination_address [String] Recipient address.
      #
      #   @param failure_reason [Privy::Models::FailureReason] A description of why a wallet action (or a step within a wallet action) failed.
      #
      #   @param source_chain [String] Chain name (e.g. "base", "ethereum").
      #
      #   @param status [Symbol, Privy::Models::WalletActionTransferFailedWebhookPayload::Status] The status of the wallet action.
      #
      #   @param steps [Array<Privy::Models::EvmTransactionWalletActionStep, Privy::Models::EvmUserOperationWalletActionStep, Privy::Models::SvmTransactionWalletActionStep, Privy::Models::ExternalTransactionWalletActionStep>] The steps of the wallet action. Completed steps will have transaction hashes; th
      #
      #   @param type [Symbol, Privy::Models::WalletActionTransferFailedWebhookPayload::Type] The type of webhook event.
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
      # @see Privy::Models::WalletActionTransferFailedWebhookPayload#status
      module Status
        extend Privy::Internal::Type::Enum

        FAILED = :failed

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The type of webhook event.
      #
      # @see Privy::Models::WalletActionTransferFailedWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        WALLET_ACTION_TRANSFER_FAILED = :"wallet_action.transfer.failed"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
