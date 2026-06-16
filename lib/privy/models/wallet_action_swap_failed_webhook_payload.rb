# frozen_string_literal: true

module Privy
  module Models
    class WalletActionSwapFailedWebhookPayload < Privy::Internal::Type::BaseModel
      # @!attribute action_type
      #   Type of wallet action
      #
      #   @return [Symbol, Privy::Models::WalletActionType]
      required :action_type, enum: -> { Privy::WalletActionType }

      # @!attribute caip2
      #   Chain identifier.
      #
      #   @return [String]
      required :caip2, String

      # @!attribute created_at
      #   ISO 8601 timestamp of when the wallet action was created.
      #
      #   @return [String]
      required :created_at, String

      # @!attribute failed_at
      #   ISO 8601 timestamp of when the wallet action failed.
      #
      #   @return [String]
      required :failed_at, String

      # @!attribute failure_reason
      #   A description of why a wallet action (or a step within a wallet action) failed.
      #
      #   @return [Privy::Models::FailureReason]
      required :failure_reason, -> { Privy::FailureReason }

      # @!attribute input_amount
      #   Amount of input token in base units. Populated after onchain confirmation.
      #
      #   @return [String, nil]
      required :input_amount, String, nil?: true

      # @!attribute input_token
      #   Token address being sold.
      #
      #   @return [String]
      required :input_token, String

      # @!attribute output_token
      #   Token address being bought.
      #
      #   @return [String]
      required :output_token, String

      # @!attribute status
      #   The status of the wallet action.
      #
      #   @return [Symbol, Privy::Models::WalletActionSwapFailedWebhookPayload::Status]
      required :status, enum: -> { Privy::WalletActionSwapFailedWebhookPayload::Status }

      # @!attribute steps
      #   The steps of the wallet action. Completed steps will have transaction hashes;
      #   the failing step will have a failure_reason.
      #
      #   @return [Array<Privy::Models::EvmTransactionWalletActionStep, Privy::Models::EvmUserOperationWalletActionStep, Privy::Models::SvmTransactionWalletActionStep, Privy::Models::ExternalTransactionWalletActionStep, Privy::Models::CustodianTransactionWalletActionStep>]
      required :steps, -> { Privy::Internal::Type::ArrayOf[union: Privy::WalletActionStep] }

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::WalletActionSwapFailedWebhookPayload::Type]
      required :type, enum: -> { Privy::WalletActionSwapFailedWebhookPayload::Type }

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

      # @!method initialize(action_type:, caip2:, created_at:, failed_at:, failure_reason:, input_amount:, input_token:, output_token:, status:, steps:, type:, wallet_action_id:, wallet_id:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::WalletActionSwapFailedWebhookPayload} for more details.
      #
      #   Payload for the wallet_action.swap.failed webhook event.
      #
      #   @param action_type [Symbol, Privy::Models::WalletActionType] Type of wallet action
      #
      #   @param caip2 [String] Chain identifier.
      #
      #   @param created_at [String] ISO 8601 timestamp of when the wallet action was created.
      #
      #   @param failed_at [String] ISO 8601 timestamp of when the wallet action failed.
      #
      #   @param failure_reason [Privy::Models::FailureReason] A description of why a wallet action (or a step within a wallet action) failed.
      #
      #   @param input_amount [String, nil] Amount of input token in base units. Populated after onchain confirmation.
      #
      #   @param input_token [String] Token address being sold.
      #
      #   @param output_token [String] Token address being bought.
      #
      #   @param status [Symbol, Privy::Models::WalletActionSwapFailedWebhookPayload::Status] The status of the wallet action.
      #
      #   @param steps [Array<Privy::Models::EvmTransactionWalletActionStep, Privy::Models::EvmUserOperationWalletActionStep, Privy::Models::SvmTransactionWalletActionStep, Privy::Models::ExternalTransactionWalletActionStep, Privy::Models::CustodianTransactionWalletActionStep>] The steps of the wallet action. Completed steps will have transaction hashes; th
      #
      #   @param type [Symbol, Privy::Models::WalletActionSwapFailedWebhookPayload::Type] The type of webhook event.
      #
      #   @param wallet_action_id [String] The ID of the wallet action.
      #
      #   @param wallet_id [String] The ID of the wallet involved in the action.

      # The status of the wallet action.
      #
      # @see Privy::Models::WalletActionSwapFailedWebhookPayload#status
      module Status
        extend Privy::Internal::Type::Enum

        FAILED = :failed

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The type of webhook event.
      #
      # @see Privy::Models::WalletActionSwapFailedWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        WALLET_ACTION_SWAP_FAILED = :"wallet_action.swap.failed"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
