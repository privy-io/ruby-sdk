# frozen_string_literal: true

module Privy
  module Models
    class EvmTransactionWalletActionStep < Privy::Internal::Type::BaseModel
      # @!attribute caip2
      #   CAIP-2 chain identifier of the transaction, containing the chain ID.
      #
      #   @return [String]
      required :caip2, String

      # @!attribute status
      #   Status of an EVM step in a wallet action.
      #
      #   @return [Symbol, Privy::Models::EvmWalletActionStepStatus]
      required :status, enum: -> { Privy::EvmWalletActionStepStatus }

      # @!attribute transaction_hash
      #   The transaction hash for this step. May change while the step status is
      #   non-terminal.
      #
      #   @return [String, nil]
      required :transaction_hash, String, nil?: true

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::EvmTransactionWalletActionStep::Type]
      required :type, enum: -> { Privy::EvmTransactionWalletActionStep::Type }

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

      # @!method initialize(caip2:, status:, transaction_hash:, type:, failure_reason: nil, finalized: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::EvmTransactionWalletActionStep} for more details.
      #
      #   A wallet action step consisting of an EVM transaction.
      #
      #   @param caip2 [String] CAIP-2 chain identifier of the transaction, containing the chain ID.
      #
      #   @param status [Symbol, Privy::Models::EvmWalletActionStepStatus] Status of an EVM step in a wallet action.
      #
      #   @param transaction_hash [String, nil] The transaction hash for this step. May change while the step status is non-term
      #
      #   @param type [Symbol, Privy::Models::EvmTransactionWalletActionStep::Type]
      #
      #   @param failure_reason [Privy::Models::FailureReason] A description of why a wallet action (or a step within a wallet action) failed.
      #
      #   @param finalized [Boolean] Whether this step has reached on-chain finality. Absent until finality is confir

      # @see Privy::Models::EvmTransactionWalletActionStep#type
      module Type
        extend Privy::Internal::Type::Enum

        EVM_TRANSACTION = :evm_transaction

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
