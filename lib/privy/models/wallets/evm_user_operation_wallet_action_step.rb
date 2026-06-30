# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      class EvmUserOperationWalletActionStep < Privy::Internal::Type::BaseModel
        # @!attribute bundle_transaction_hash
        #   Transaction hash of the bundle in which this user operation was included. Null
        #   until included by a bundler.
        #
        #   @return [String, nil]
        required :bundle_transaction_hash, String, nil?: true

        # @!attribute caip2
        #   CAIP-2 network identifier, containing the chain ID of the user operation.
        #
        #   @return [String]
        required :caip2, String

        # @!attribute entrypoint_version
        #   The ERC-4337 entrypoint contract version used by the user operation.
        #
        #   @return [Symbol, Privy::Models::Wallets::EvmUserOperationEntrypointVersion]
        required :entrypoint_version, enum: -> { Privy::Wallets::EvmUserOperationEntrypointVersion }

        # @!attribute status
        #   Status of an EVM step in a wallet action.
        #
        #   @return [Symbol, Privy::Models::Wallets::EvmWalletActionStepStatus]
        required :status, enum: -> { Privy::Wallets::EvmWalletActionStepStatus }

        # @!attribute type
        #
        #   @return [Symbol, Privy::Models::Wallets::EvmUserOperationWalletActionStep::Type]
        required :type, enum: -> { Privy::Wallets::EvmUserOperationWalletActionStep::Type }

        # @!attribute user_operation_hash
        #   The user operation hash for this step. May change while the step status is
        #   non-terminal.
        #
        #   @return [String, nil]
        required :user_operation_hash, String, nil?: true

        # @!attribute failure_reason
        #   A description of why a wallet action (or a step within a wallet action) failed.
        #
        #   @return [Privy::Models::Wallets::FailureReason, nil]
        optional :failure_reason, -> { Privy::Wallets::FailureReason }

        # @!attribute finalized
        #   Whether this step has reached on-chain finality. Absent until finality is
        #   confirmed.
        #
        #   @return [Boolean, nil]
        optional :finalized, Privy::Internal::Type::Boolean

        # @!attribute gas_credits_charged_usd
        #   Amount charged in USD for gas sponsorship on this step.
        #
        #   @return [String, nil]
        optional :gas_credits_charged_usd, String

        # @!method initialize(bundle_transaction_hash:, caip2:, entrypoint_version:, status:, type:, user_operation_hash:, failure_reason: nil, finalized: nil, gas_credits_charged_usd: nil)
        #   Some parameter documentations has been truncated, see
        #   {Privy::Models::Wallets::EvmUserOperationWalletActionStep} for more details.
        #
        #   A wallet action step consisting of an EVM user operation.
        #
        #   @param bundle_transaction_hash [String, nil] Transaction hash of the bundle in which this user operation was included. Null u
        #
        #   @param caip2 [String] CAIP-2 network identifier, containing the chain ID of the user operation.
        #
        #   @param entrypoint_version [Symbol, Privy::Models::Wallets::EvmUserOperationEntrypointVersion] The ERC-4337 entrypoint contract version used by the user operation.
        #
        #   @param status [Symbol, Privy::Models::Wallets::EvmWalletActionStepStatus] Status of an EVM step in a wallet action.
        #
        #   @param type [Symbol, Privy::Models::Wallets::EvmUserOperationWalletActionStep::Type]
        #
        #   @param user_operation_hash [String, nil] The user operation hash for this step. May change while the step status is non-t
        #
        #   @param failure_reason [Privy::Models::Wallets::FailureReason] A description of why a wallet action (or a step within a wallet action) failed.
        #
        #   @param finalized [Boolean] Whether this step has reached on-chain finality. Absent until finality is confir
        #
        #   @param gas_credits_charged_usd [String] Amount charged in USD for gas sponsorship on this step.

        # @see Privy::Models::Wallets::EvmUserOperationWalletActionStep#type
        module Type
          extend Privy::Internal::Type::Enum

          EVM_USER_OPERATION = :evm_user_operation

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
