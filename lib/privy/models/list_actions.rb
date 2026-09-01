# frozen_string_literal: true

module Privy
  module Models
    class ListActions < Privy::Internal::Type::BaseModel
      # @!attribute actions
      #
      #   @return [Array<Privy::Models::Wallets::SwapActionResponse, Privy::Models::Wallets::TransferActionResponse, Privy::Models::Wallets::EarnDepositActionResponse, Privy::Models::Wallets::EarnWithdrawActionResponse, Privy::Models::Wallets::EarnIncentiveClaimActionResponse, Privy::Models::Wallets::EarnFeeCollectActionResponse, Privy::Models::Wallets::PayoutResponse>]
      required :actions, -> { Privy::Internal::Type::ArrayOf[union: Privy::Wallets::WalletActionResponse] }

      # @!method initialize(actions:)
      #   A list of wallet actions.
      #
      #   @param actions [Array<Privy::Models::Wallets::SwapActionResponse, Privy::Models::Wallets::TransferActionResponse, Privy::Models::Wallets::EarnDepositActionResponse, Privy::Models::Wallets::EarnWithdrawActionResponse, Privy::Models::Wallets::EarnIncentiveClaimActionResponse, Privy::Models::Wallets::EarnFeeCollectActionResponse, Privy::Models::Wallets::PayoutResponse>]
    end
  end
end
