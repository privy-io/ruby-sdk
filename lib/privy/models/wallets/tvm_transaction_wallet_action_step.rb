# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      class TvmTransactionWalletActionStep < Privy::Internal::Type::BaseModel
        # @!attribute caip2
        #   CAIP-2 chain identifier for the Tron network.
        #
        #   @return [String]
        required :caip2, String

        # @!attribute status
        #   Status of a TVM (Tron) step in a wallet action.
        #
        #   @return [Symbol, Privy::Models::Wallets::TvmWalletActionStepStatus]
        required :status, enum: -> { Privy::Wallets::TvmWalletActionStepStatus }

        # @!attribute transaction_id
        #   The Tron transaction ID. Null until broadcast.
        #
        #   @return [String, nil]
        required :transaction_id, String, nil?: true

        # @!attribute type
        #
        #   @return [Symbol, Privy::Models::Wallets::TvmTransactionWalletActionStep::Type]
        required :type, enum: -> { Privy::Wallets::TvmTransactionWalletActionStep::Type }

        # @!attribute failure_reason
        #   A description of why a wallet action (or a step within a wallet action) failed.
        #
        #   @return [Privy::Models::Wallets::FailureReason, nil]
        optional :failure_reason, -> { Privy::Wallets::FailureReason }

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

        # @!method initialize(caip2:, status:, transaction_id:, type:, failure_reason: nil, gas_credits_charged: nil, gas_credits_charged_usd: nil)
        #   Some parameter documentations has been truncated, see
        #   {Privy::Models::Wallets::TvmTransactionWalletActionStep} for more details.
        #
        #   A wallet action step consisting of a TVM (Tron) transaction.
        #
        #   @param caip2 [String] CAIP-2 chain identifier for the Tron network.
        #
        #   @param status [Symbol, Privy::Models::Wallets::TvmWalletActionStepStatus] Status of a TVM (Tron) step in a wallet action.
        #
        #   @param transaction_id [String, nil] The Tron transaction ID. Null until broadcast.
        #
        #   @param type [Symbol, Privy::Models::Wallets::TvmTransactionWalletActionStep::Type]
        #
        #   @param failure_reason [Privy::Models::Wallets::FailureReason] A description of why a wallet action (or a step within a wallet action) failed.
        #
        #   @param gas_credits_charged [Privy::Models::CurrencyAmount, nil] A monetary value with its currency denomination.
        #
        #   @param gas_credits_charged_usd [String, nil] Deprecated, use `gas_credits_charged` instead; gas credits charged in USD for th

        # @see Privy::Models::Wallets::TvmTransactionWalletActionStep#type
        module Type
          extend Privy::Internal::Type::Enum

          TVM_TRANSACTION = :tvm_transaction

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
