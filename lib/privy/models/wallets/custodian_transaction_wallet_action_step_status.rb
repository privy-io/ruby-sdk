# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      # Status of a custodian transaction step in a wallet action.
      module CustodianTransactionWalletActionStepStatus
        extend Privy::Internal::Type::Enum

        PREPARING = :preparing
        QUEUED = :queued
        CUSTODIAN_REVIEWING = :custodian_reviewing
        PENDING = :pending
        CONFIRMED = :confirmed
        REJECTED = :rejected
        FAILED = :failed

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
