# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      # Status of an SVM step in a wallet action.
      module SvmWalletActionStepStatus
        extend Privy::Internal::Type::Enum

        PREPARING = :preparing
        QUEUED = :queued
        PENDING = :pending
        CONFIRMED = :confirmed
        REJECTED = :rejected
        REVERTED = :reverted
        FAILED = :failed

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
