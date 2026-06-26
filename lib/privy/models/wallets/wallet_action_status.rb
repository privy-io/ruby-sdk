# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      # Status of a wallet action.
      module WalletActionStatus
        extend Privy::Internal::Type::Enum

        PENDING = :pending
        SUCCEEDED = :succeeded
        REJECTED = :rejected
        FAILED = :failed

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end

    WalletActionStatus = Wallets::WalletActionStatus
  end
end
