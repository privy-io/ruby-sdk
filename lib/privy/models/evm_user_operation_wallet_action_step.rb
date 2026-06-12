# frozen_string_literal: true

module Privy
  module Models
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
      #   The entrypoint version of the user operation.
      #
      #   @return [Symbol, Privy::Models::EvmUserOperationWalletActionStep::EntrypointVersion]
      required :entrypoint_version, enum: -> { Privy::EvmUserOperationWalletActionStep::EntrypointVersion }

      # @!attribute status
      #   Status of an EVM step in a wallet action.
      #
      #   @return [Symbol, Privy::Models::EvmWalletActionStepStatus]
      required :status, enum: -> { Privy::EvmWalletActionStepStatus }

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::EvmUserOperationWalletActionStep::Type]
      required :type, enum: -> { Privy::EvmUserOperationWalletActionStep::Type }

      # @!attribute user_operation_hash
      #   The user operation hash for this step. May change while the step status is
      #   non-terminal.
      #
      #   @return [String, nil]
      required :user_operation_hash, String, nil?: true

      # @!attribute failure_reason
      #   A description of why a wallet action (or a step within a wallet action) failed.
      #
      #   @return [Privy::Models::FailureReason, nil]
      optional :failure_reason, -> { Privy::FailureReason }

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
      #   {Privy::Models::EvmUserOperationWalletActionStep} for more details.
      #
      #   A wallet action step consisting of an EVM user operation.
      #
      #   @param bundle_transaction_hash [String, nil] Transaction hash of the bundle in which this user operation was included. Null u
      #
      #   @param caip2 [String] CAIP-2 network identifier, containing the chain ID of the user operation.
      #
      #   @param entrypoint_version [Symbol, Privy::Models::EvmUserOperationWalletActionStep::EntrypointVersion] The entrypoint version of the user operation.
      #
      #   @param status [Symbol, Privy::Models::EvmWalletActionStepStatus] Status of an EVM step in a wallet action.
      #
      #   @param type [Symbol, Privy::Models::EvmUserOperationWalletActionStep::Type]
      #
      #   @param user_operation_hash [String, nil] The user operation hash for this step. May change while the step status is non-t
      #
      #   @param failure_reason [Privy::Models::FailureReason] A description of why a wallet action (or a step within a wallet action) failed.
      #
      #   @param finalized [Boolean] Whether this step has reached on-chain finality. Absent until finality is confir
      #
      #   @param gas_credits_charged_usd [String] Amount charged in USD for gas sponsorship on this step.

      # The entrypoint version of the user operation.
      #
      # @see Privy::Models::EvmUserOperationWalletActionStep#entrypoint_version
      module EntrypointVersion
        extend Privy::Internal::Type::Enum

        ENTRYPOINT_VERSION_0_6 = :"0.6"
        ENTRYPOINT_VERSION_0_7 = :"0.7"
        ENTRYPOINT_VERSION_0_8 = :"0.8"
        ENTRYPOINT_VERSION_0_9 = :"0.9"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::EvmUserOperationWalletActionStep#type
      module Type
        extend Privy::Internal::Type::Enum

        EVM_USER_OPERATION = :evm_user_operation

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
