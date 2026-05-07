# frozen_string_literal: true

module Privy
  module Models
    class ExternalTransactionWalletActionStep < Privy::Internal::Type::BaseModel
      # @!attribute status
      #   Status of an external transaction step in a wallet action.
      #
      #   @return [Symbol, Privy::Models::ExternalTransactionWalletActionStepStatus]
      required :status, enum: -> { Privy::ExternalTransactionWalletActionStepStatus }

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::ExternalTransactionWalletActionStep::Type]
      required :type, enum: -> { Privy::ExternalTransactionWalletActionStep::Type }

      # @!attribute failure_reason
      #   A description of why a wallet action (or a step within a wallet action) failed.
      #
      #   @return [Privy::Models::FailureReason, nil]
      optional :failure_reason, -> { Privy::FailureReason }

      # @!method initialize(status:, type:, failure_reason: nil)
      #   A wallet action step representing a cross-chain/cross-asset fill by an external
      #   provider.
      #
      #   @param status [Symbol, Privy::Models::ExternalTransactionWalletActionStepStatus] Status of an external transaction step in a wallet action.
      #
      #   @param type [Symbol, Privy::Models::ExternalTransactionWalletActionStep::Type]
      #
      #   @param failure_reason [Privy::Models::FailureReason] A description of why a wallet action (or a step within a wallet action) failed.

      # @see Privy::Models::ExternalTransactionWalletActionStep#type
      module Type
        extend Privy::Internal::Type::Enum

        EXTERNAL_TRANSACTION = :external_transaction

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
