# frozen_string_literal: true

module Privy
  module Models
    class WalletActionTransferRejectedWebhookPayload < Privy::Internal::Type::BaseModel
      # @!attribute action_type
      #   Type of wallet action
      #
      #   @return [Symbol, Privy::Models::Wallets::WalletActionType]
      required :action_type, enum: -> { Privy::Wallets::WalletActionType }

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

      # @!attribute failure_reason
      #   A description of why a wallet action (or a step within a wallet action) failed.
      #
      #   @return [Privy::Models::Wallets::FailureReason]
      required :failure_reason, -> { Privy::Wallets::FailureReason }

      # @!attribute rejected_at
      #   ISO 8601 timestamp of when the wallet action was rejected.
      #
      #   @return [String]
      required :rejected_at, String

      # @!attribute source_chain
      #   Chain name (e.g. "tempo", "base").
      #
      #   @return [String]
      required :source_chain, String

      # @!attribute status
      #   The status of the wallet action.
      #
      #   @return [Symbol, Privy::Models::WalletActionTransferRejectedWebhookPayload::Status]
      required :status, enum: -> { Privy::WalletActionTransferRejectedWebhookPayload::Status }

      # @!attribute steps
      #   The steps of the wallet action at the time of rejection.
      #
      #   @return [Array<Privy::Models::Wallets::EvmTransactionWalletActionStep, Privy::Models::Wallets::EvmUserOperationWalletActionStep, Privy::Models::Wallets::SvmTransactionWalletActionStep, Privy::Models::Wallets::TvmTransactionWalletActionStep, Privy::Models::Wallets::ExternalTransactionWalletActionStep, Privy::Models::Wallets::CustodianTransactionWalletActionStep>]
      required :steps, -> { Privy::Internal::Type::ArrayOf[union: Privy::Wallets::WalletActionStep] }

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::WalletActionTransferRejectedWebhookPayload::Type]
      required :type, enum: -> { Privy::WalletActionTransferRejectedWebhookPayload::Type }

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

      # @!method initialize(action_type:, created_at:, destination_address:, failure_reason:, rejected_at:, source_chain:, status:, steps:, type:, wallet_action_id:, wallet_id:, source_amount: nil, source_asset: nil, source_asset_address: nil, source_asset_decimals: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::WalletActionTransferRejectedWebhookPayload} for more details.
      #
      #   Payload for the wallet_action.transfer.rejected webhook event.
      #
      #   @param action_type [Symbol, Privy::Models::Wallets::WalletActionType] Type of wallet action
      #
      #   @param created_at [String] ISO 8601 timestamp of when the wallet action was created.
      #
      #   @param destination_address [String] Recipient address.
      #
      #   @param failure_reason [Privy::Models::Wallets::FailureReason] A description of why a wallet action (or a step within a wallet action) failed.
      #
      #   @param rejected_at [String] ISO 8601 timestamp of when the wallet action was rejected.
      #
      #   @param source_chain [String] Chain name (e.g. "tempo", "base").
      #
      #   @param status [Symbol, Privy::Models::WalletActionTransferRejectedWebhookPayload::Status] The status of the wallet action.
      #
      #   @param steps [Array<Privy::Models::Wallets::EvmTransactionWalletActionStep, Privy::Models::Wallets::EvmUserOperationWalletActionStep, Privy::Models::Wallets::SvmTransactionWalletActionStep, Privy::Models::Wallets::TvmTransactionWalletActionStep, Privy::Models::Wallets::ExternalTransactionWalletActionStep, Privy::Models::Wallets::CustodianTransactionWalletActionStep>] The steps of the wallet action at the time of rejection.
      #
      #   @param type [Symbol, Privy::Models::WalletActionTransferRejectedWebhookPayload::Type] The type of webhook event.
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
      # @see Privy::Models::WalletActionTransferRejectedWebhookPayload#status
      module Status
        extend Privy::Internal::Type::Enum

        REJECTED = :rejected

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The type of webhook event.
      #
      # @see Privy::Models::WalletActionTransferRejectedWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        WALLET_ACTION_TRANSFER_REJECTED = :"wallet_action.transfer.rejected"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
