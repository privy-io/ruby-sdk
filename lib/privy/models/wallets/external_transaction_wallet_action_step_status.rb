# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      # Status of an external transaction step in a wallet action.
      module ExternalTransactionWalletActionStepStatus
        extend Privy::Internal::Type::Enum

        PREPARING = :preparing
        QUEUED = :queued
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
