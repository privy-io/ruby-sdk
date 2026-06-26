# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      class CustodianTransactionWalletActionStep < Privy::Internal::Type::BaseModel
        # @!attribute custodian
        #   Identifier of the custodian executing this transaction (e.g. "bridge").
        #
        #   @return [String]
        required :custodian, String

        # @!attribute status
        #   Status of a custodian transaction step in a wallet action.
        #
        #   @return [Symbol, Privy::Models::Wallets::CustodianTransactionWalletActionStepStatus]
        required :status, enum: -> { Privy::Wallets::CustodianTransactionWalletActionStepStatus }

        # @!attribute type
        #
        #   @return [Symbol, Privy::Models::Wallets::CustodianTransactionWalletActionStep::Type]
        required :type, enum: -> { Privy::Wallets::CustodianTransactionWalletActionStep::Type }

        # @!attribute failure_reason
        #   A description of why a wallet action (or a step within a wallet action) failed.
        #
        #   @return [Privy::Models::Wallets::FailureReason, nil]
        optional :failure_reason, -> { Privy::Wallets::FailureReason }

        # @!method initialize(custodian:, status:, type:, failure_reason: nil)
        #   A wallet action step representing a transaction executed by a custodian (e.g.
        #   Bridge).
        #
        #   @param custodian [String] Identifier of the custodian executing this transaction (e.g. "bridge").
        #
        #   @param status [Symbol, Privy::Models::Wallets::CustodianTransactionWalletActionStepStatus] Status of a custodian transaction step in a wallet action.
        #
        #   @param type [Symbol, Privy::Models::Wallets::CustodianTransactionWalletActionStep::Type]
        #
        #   @param failure_reason [Privy::Models::Wallets::FailureReason] A description of why a wallet action (or a step within a wallet action) failed.

        # @see Privy::Models::Wallets::CustodianTransactionWalletActionStep#type
        module Type
          extend Privy::Internal::Type::Enum

          CUSTODIAN_TRANSACTION = :custodian_transaction

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
