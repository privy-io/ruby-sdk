# frozen_string_literal: true

module Privy
  module Models
    class TvmTransactionWalletActionStep < Privy::Internal::Type::BaseModel
      # @!attribute caip2
      #   CAIP-2 chain identifier for the Tron network.
      #
      #   @return [String]
      required :caip2, String

      # @!attribute status
      #   Status of a TVM (Tron) step in a wallet action.
      #
      #   @return [Symbol, Privy::Models::TvmWalletActionStepStatus]
      required :status, enum: -> { Privy::TvmWalletActionStepStatus }

      # @!attribute transaction_id
      #   The Tron transaction ID. Null until broadcast.
      #
      #   @return [String, nil]
      required :transaction_id, String, nil?: true

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::TvmTransactionWalletActionStep::Type]
      required :type, enum: -> { Privy::TvmTransactionWalletActionStep::Type }

      # @!attribute failure_reason
      #   A description of why a wallet action (or a step within a wallet action) failed.
      #
      #   @return [Privy::Models::FailureReason, nil]
      optional :failure_reason, -> { Privy::FailureReason }

      # @!method initialize(caip2:, status:, transaction_id:, type:, failure_reason: nil)
      #   A wallet action step consisting of a TVM (Tron) transaction.
      #
      #   @param caip2 [String] CAIP-2 chain identifier for the Tron network.
      #
      #   @param status [Symbol, Privy::Models::TvmWalletActionStepStatus] Status of a TVM (Tron) step in a wallet action.
      #
      #   @param transaction_id [String, nil] The Tron transaction ID. Null until broadcast.
      #
      #   @param type [Symbol, Privy::Models::TvmTransactionWalletActionStep::Type]
      #
      #   @param failure_reason [Privy::Models::FailureReason] A description of why a wallet action (or a step within a wallet action) failed.

      # @see Privy::Models::TvmTransactionWalletActionStep#type
      module Type
        extend Privy::Internal::Type::Enum

        TVM_TRANSACTION = :tvm_transaction

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
