# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      # Type of wallet action
      module WalletActionType
        extend Privy::Internal::Type::Enum

        SWAP = :swap
        TRANSFER = :transfer
        EARN_DEPOSIT = :earn_deposit
        EARN_WITHDRAW = :earn_withdraw
        EARN_INCENTIVE_CLAIM = :earn_incentive_claim
        EARN_FEE_COLLECT = :earn_fee_collect

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end

    WalletActionType = Wallets::WalletActionType
  end
end
