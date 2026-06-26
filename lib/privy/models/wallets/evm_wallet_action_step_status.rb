# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      # Status of an EVM step in a wallet action.
      module EvmWalletActionStepStatus
        extend Privy::Internal::Type::Enum

        PREPARING = :preparing
        QUEUED = :queued
        PENDING = :pending
        RETRYING = :retrying
        CONFIRMED = :confirmed
        REJECTED = :rejected
        REVERTED = :reverted
        REPLACED = :replaced
        ABANDONED = :abandoned

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
