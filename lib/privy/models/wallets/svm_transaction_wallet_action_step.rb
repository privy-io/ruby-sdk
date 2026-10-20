# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      class SvmTransactionWalletActionStep < Privy::Internal::Type::BaseModel
        # @!attribute caip2
        #   CAIP-2 chain identifier for the Solana network.
        #
        #   @return [String]
        required :caip2, String

        # @!attribute status
        #   Status of an SVM step in a wallet action.
        #
        #   @return [Symbol, Privy::Models::Wallets::SvmWalletActionStepStatus]
        required :status, enum: -> { Privy::Wallets::SvmWalletActionStepStatus }

        # @!attribute transaction_signature
        #   The Solana transaction signature (base58-encoded). Null until broadcast.
        #
        #   @return [String, nil]
        required :transaction_signature, String, nil?: true

        # @!attribute type
        #
        #   @return [Symbol, Privy::Models::Wallets::SvmTransactionWalletActionStep::Type]
        required :type, enum: -> { Privy::Wallets::SvmTransactionWalletActionStep::Type }

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

        # @!attribute gas_credits_charged
        #   A monetary value with its currency denomination.
        #
        #   @return [Privy::Models::CurrencyAmount, nil]
        optional :gas_credits_charged, -> { Privy::CurrencyAmount }, nil?: true

        # @!attribute gas_credits_charged_usd
        #   @deprecated
        #
        #   Deprecated, use `gas_credits_charged` instead; gas credits charged in USD for
        #   this step, if sponsored, as a decimal string.
        #
        #   @return [String, nil]
        optional :gas_credits_charged_usd, String, nil?: true

        # @!method initialize(caip2:, status:, transaction_signature:, type:, failure_reason: nil, finalized: nil, gas_credits_charged: nil, gas_credits_charged_usd: nil)
        #   Some parameter documentations has been truncated, see
        #   {Privy::Models::Wallets::SvmTransactionWalletActionStep} for more details.
        #
        #   A wallet action step consisting of an SVM (Solana) transaction.
        #
        #   @param caip2 [String] CAIP-2 chain identifier for the Solana network.
        #
        #   @param status [Symbol, Privy::Models::Wallets::SvmWalletActionStepStatus] Status of an SVM step in a wallet action.
        #
        #   @param transaction_signature [String, nil] The Solana transaction signature (base58-encoded). Null until broadcast.
        #
        #   @param type [Symbol, Privy::Models::Wallets::SvmTransactionWalletActionStep::Type]
        #
        #   @param failure_reason [Privy::Models::Wallets::FailureReason] A description of why a wallet action (or a step within a wallet action) failed.
        #
        #   @param finalized [Boolean] Whether this step has reached on-chain finality. Absent until finality is confir
        #
        #   @param gas_credits_charged [Privy::Models::CurrencyAmount, nil] A monetary value with its currency denomination.
        #
        #   @param gas_credits_charged_usd [String, nil] Deprecated, use `gas_credits_charged` instead; gas credits charged in USD for th

        # @see Privy::Models::Wallets::SvmTransactionWalletActionStep#type
        module Type
          extend Privy::Internal::Type::Enum

          SVM_TRANSACTION = :svm_transaction

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
