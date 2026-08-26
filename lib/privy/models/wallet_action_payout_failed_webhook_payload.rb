# frozen_string_literal: true

module Privy
  module Models
    class WalletActionPayoutFailedWebhookPayload < Privy::Internal::Type::BaseModel
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

      # @!attribute destination_currency
      #   The fiat currency the payout settles in (e.g. "usd").
      #
      #   @return [String]
      required :destination_currency, String

      # @!attribute destination_fiat_account_id
      #   The registered external fiat account the payout settles to.
      #
      #   @return [String]
      required :destination_fiat_account_id, String

      # @!attribute destination_payment_rail
      #   The fiat payment rail the payout settles over (e.g. "ach", "sepa", "wire").
      #
      #   @return [String]
      required :destination_payment_rail, String

      # @!attribute environment
      #   The Privy API environment.
      #
      #   @return [Symbol, Privy::Models::Environment]
      required :environment, enum: -> { Privy::Environment }

      # @!attribute failed_at
      #   ISO 8601 timestamp of when the wallet action failed.
      #
      #   @return [String]
      required :failed_at, String

      # @!attribute failure_reason
      #   A description of why a wallet action (or a step within a wallet action) failed.
      #
      #   @return [Privy::Models::Wallets::FailureReason]
      required :failure_reason, -> { Privy::Wallets::FailureReason }

      # @!attribute provider
      #   Supported fiat orchestration providers.
      #
      #   @return [Symbol, Privy::Models::OrchestrationProvider]
      required :provider, enum: -> { Privy::OrchestrationProvider }

      # @!attribute source_amount
      #   Decimal amount offramped, in the asset's standard units (e.g. "100.00").
      #
      #   @return [String]
      required :source_amount, String

      # @!attribute source_asset
      #   Source crypto asset sent on-chain (e.g. "usdc").
      #
      #   @return [String]
      required :source_asset, String

      # @!attribute source_chain
      #   Source chain the crypto was sent from (e.g. "base").
      #
      #   @return [String]
      required :source_chain, String

      # @!attribute status
      #   The status of the wallet action.
      #
      #   @return [Symbol, Privy::Models::WalletActionPayoutFailedWebhookPayload::Status]
      required :status, enum: -> { Privy::WalletActionPayoutFailedWebhookPayload::Status }

      # @!attribute steps
      #   The steps of the wallet action. Completed steps will have transaction hashes;
      #   the failing step will have a failure_reason.
      #
      #   @return [Array<Privy::Models::Wallets::EvmTransactionWalletActionStep, Privy::Models::Wallets::EvmUserOperationWalletActionStep, Privy::Models::Wallets::SvmTransactionWalletActionStep, Privy::Models::Wallets::TvmTransactionWalletActionStep, Privy::Models::Wallets::ExternalTransactionWalletActionStep, Privy::Models::Wallets::CustodianTransactionWalletActionStep>]
      required :steps, -> { Privy::Internal::Type::ArrayOf[union: Privy::Wallets::WalletActionStep] }

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::WalletActionPayoutFailedWebhookPayload::Type]
      required :type, enum: -> { Privy::WalletActionPayoutFailedWebhookPayload::Type }

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

      # @!method initialize(action_type:, created_at:, destination_currency:, destination_fiat_account_id:, destination_payment_rail:, environment:, failed_at:, failure_reason:, provider:, source_amount:, source_asset:, source_chain:, status:, steps:, type:, wallet_action_id:, wallet_id:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::WalletActionPayoutFailedWebhookPayload} for more details.
      #
      #   Payload for the wallet_action.payout.failed webhook event.
      #
      #   @param action_type [Symbol, Privy::Models::Wallets::WalletActionType] Type of wallet action
      #
      #   @param created_at [String] ISO 8601 timestamp of when the wallet action was created.
      #
      #   @param destination_currency [String] The fiat currency the payout settles in (e.g. "usd").
      #
      #   @param destination_fiat_account_id [String] The registered external fiat account the payout settles to.
      #
      #   @param destination_payment_rail [String] The fiat payment rail the payout settles over (e.g. "ach", "sepa", "wire").
      #
      #   @param environment [Symbol, Privy::Models::Environment] The Privy API environment.
      #
      #   @param failed_at [String] ISO 8601 timestamp of when the wallet action failed.
      #
      #   @param failure_reason [Privy::Models::Wallets::FailureReason] A description of why a wallet action (or a step within a wallet action) failed.
      #
      #   @param provider [Symbol, Privy::Models::OrchestrationProvider] Supported fiat orchestration providers.
      #
      #   @param source_amount [String] Decimal amount offramped, in the asset's standard units (e.g. "100.00").
      #
      #   @param source_asset [String] Source crypto asset sent on-chain (e.g. "usdc").
      #
      #   @param source_chain [String] Source chain the crypto was sent from (e.g. "base").
      #
      #   @param status [Symbol, Privy::Models::WalletActionPayoutFailedWebhookPayload::Status] The status of the wallet action.
      #
      #   @param steps [Array<Privy::Models::Wallets::EvmTransactionWalletActionStep, Privy::Models::Wallets::EvmUserOperationWalletActionStep, Privy::Models::Wallets::SvmTransactionWalletActionStep, Privy::Models::Wallets::TvmTransactionWalletActionStep, Privy::Models::Wallets::ExternalTransactionWalletActionStep, Privy::Models::Wallets::CustodianTransactionWalletActionStep>] The steps of the wallet action. Completed steps will have transaction hashes; th
      #
      #   @param type [Symbol, Privy::Models::WalletActionPayoutFailedWebhookPayload::Type] The type of webhook event.
      #
      #   @param wallet_action_id [String] The ID of the wallet action.
      #
      #   @param wallet_id [String] The ID of the wallet involved in the action.

      # The status of the wallet action.
      #
      # @see Privy::Models::WalletActionPayoutFailedWebhookPayload#status
      module Status
        extend Privy::Internal::Type::Enum

        FAILED = :failed

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The type of webhook event.
      #
      # @see Privy::Models::WalletActionPayoutFailedWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        WALLET_ACTION_PAYOUT_FAILED = :"wallet_action.payout.failed"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
