# frozen_string_literal: true

module Privy
  module Models
    class WalletActionSwapSucceededWebhookPayload < Privy::Internal::Type::BaseModel
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

      # @!attribute output_amount
      #   Amount of output token received, in base units. Populated after onchain
      #   confirmation.
      #
      #   @return [String, nil]
      required :output_amount, String, nil?: true

      # @!attribute output_token
      #   Token address being bought.
      #
      #   @return [String]
      required :output_token, String

      # @!attribute status
      #   The status of the wallet action.
      #
      #   @return [Symbol, Privy::Models::WalletActionSwapSucceededWebhookPayload::Status]
      required :status, enum: -> { Privy::WalletActionSwapSucceededWebhookPayload::Status }

      # @!attribute steps
      #   The steps of the wallet action, including transaction hashes.
      #
      #   @return [Array<Privy::Models::EvmTransactionWalletActionStep, Privy::Models::EvmUserOperationWalletActionStep, Privy::Models::SvmTransactionWalletActionStep, Privy::Models::TvmTransactionWalletActionStep, Privy::Models::ExternalTransactionWalletActionStep, Privy::Models::CustodianTransactionWalletActionStep>]
      required :steps, -> { Privy::Internal::Type::ArrayOf[union: Privy::WalletActionStep] }

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::WalletActionSwapSucceededWebhookPayload::Type]
      required :type, enum: -> { Privy::WalletActionSwapSucceededWebhookPayload::Type }

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

      # @!method initialize(action_type:, caip2:, completed_at:, created_at:, input_amount:, input_token:, output_amount:, output_token:, status:, steps:, type:, wallet_action_id:, wallet_id:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::WalletActionSwapSucceededWebhookPayload} for more details.
      #
      #   Payload for the wallet_action.swap.succeeded webhook event.
      #
      #   @param action_type [Symbol, Privy::Models::WalletActionType] Type of wallet action
      #
      #   @param caip2 [String] Chain identifier.
      #
      #   @param completed_at [String] ISO 8601 timestamp of when the wallet action completed successfully.
      #
      #   @param created_at [String] ISO 8601 timestamp of when the wallet action was created.
      #
      #   @param input_amount [String, nil] Amount of input token in base units. Populated after onchain confirmation.
      #
      #   @param input_token [String] Token address being sold.
      #
      #   @param output_amount [String, nil] Amount of output token received, in base units. Populated after onchain confirma
      #
      #   @param output_token [String] Token address being bought.
      #
      #   @param status [Symbol, Privy::Models::WalletActionSwapSucceededWebhookPayload::Status] The status of the wallet action.
      #
      #   @param steps [Array<Privy::Models::EvmTransactionWalletActionStep, Privy::Models::EvmUserOperationWalletActionStep, Privy::Models::SvmTransactionWalletActionStep, Privy::Models::TvmTransactionWalletActionStep, Privy::Models::ExternalTransactionWalletActionStep, Privy::Models::CustodianTransactionWalletActionStep>] The steps of the wallet action, including transaction hashes.
      #
      #   @param type [Symbol, Privy::Models::WalletActionSwapSucceededWebhookPayload::Type] The type of webhook event.
      #
      #   @param wallet_action_id [String] The ID of the wallet action.
      #
      #   @param wallet_id [String] The ID of the wallet involved in the action.

      # The status of the wallet action.
      #
      # @see Privy::Models::WalletActionSwapSucceededWebhookPayload#status
      module Status
        extend Privy::Internal::Type::Enum

        SUCCEEDED = :succeeded

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The type of webhook event.
      #
      # @see Privy::Models::WalletActionSwapSucceededWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        WALLET_ACTION_SWAP_SUCCEEDED = :"wallet_action.swap.succeeded"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
