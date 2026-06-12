# frozen_string_literal: true

module Privy
  module Models
    class SvmTransactionWalletActionStep < Privy::Internal::Type::BaseModel
      # @!attribute caip2
      #   CAIP-2 chain identifier for the Solana network.
      #
      #   @return [String]
      required :caip2, String

      # @!attribute status
      #   Status of an SVM step in a wallet action.
      #
      #   @return [Symbol, Privy::Models::SvmWalletActionStepStatus]
      required :status, enum: -> { Privy::SvmWalletActionStepStatus }

      # @!attribute transaction_signature
      #   The Solana transaction signature (base58-encoded). Null until broadcast.
      #
      #   @return [String, nil]
      required :transaction_signature, String, nil?: true

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::SvmTransactionWalletActionStep::Type]
      required :type, enum: -> { Privy::SvmTransactionWalletActionStep::Type }

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

      # @!method initialize(caip2:, status:, transaction_signature:, type:, failure_reason: nil, finalized: nil, gas_credits_charged_usd: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::SvmTransactionWalletActionStep} for more details.
      #
      #   A wallet action step consisting of an SVM (Solana) transaction.
      #
      #   @param caip2 [String] CAIP-2 chain identifier for the Solana network.
      #
      #   @param status [Symbol, Privy::Models::SvmWalletActionStepStatus] Status of an SVM step in a wallet action.
      #
      #   @param transaction_signature [String, nil] The Solana transaction signature (base58-encoded). Null until broadcast.
      #
      #   @param type [Symbol, Privy::Models::SvmTransactionWalletActionStep::Type]
      #
      #   @param failure_reason [Privy::Models::FailureReason] A description of why a wallet action (or a step within a wallet action) failed.
      #
      #   @param finalized [Boolean] Whether this step has reached on-chain finality. Absent until finality is confir
      #
      #   @param gas_credits_charged_usd [String] Amount charged in USD for gas sponsorship on this step.

      # @see Privy::Models::SvmTransactionWalletActionStep#type
      module Type
        extend Privy::Internal::Type::Enum

        SVM_TRANSACTION = :svm_transaction

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
