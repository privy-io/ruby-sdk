# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      # Response for a wallet action, discriminated on type.
      #
      # @see Privy::Resources::Wallets::Actions#get
      module WalletActionResponse
        extend Privy::Internal::Type::Union

        discriminator :type

        # Response for a swap action.
        variant :swap, -> { Privy::Wallets::SwapActionResponse }

        # Response for a transfer action.
        variant :transfer, -> { Privy::Wallets::TransferActionResponse }

        # Response for an earn deposit action.
        variant :earn_deposit, -> { Privy::Wallets::EarnDepositActionResponse }

        # Response for an earn withdraw action.
        variant :earn_withdraw, -> { Privy::Wallets::EarnWithdrawActionResponse }

        # Response for an earn incentive claim action.
        variant :earn_incentive_claim, -> { Privy::Wallets::EarnIncentiveClaimActionResponse }

        # Response for an earn fee collect action.
        variant :earn_fee_collect, -> { Privy::Wallets::EarnFeeCollectActionResponse }

        # A payout wallet action. Crypto is sent on-chain to a liquidation address that offramps to the destination bank account.
        variant :payout, -> { Privy::Wallets::PayoutResponse }

        # @!method self.variants
        #   @return [Array(Privy::Models::Wallets::SwapActionResponse, Privy::Models::Wallets::TransferActionResponse, Privy::Models::Wallets::EarnDepositActionResponse, Privy::Models::Wallets::EarnWithdrawActionResponse, Privy::Models::Wallets::EarnIncentiveClaimActionResponse, Privy::Models::Wallets::EarnFeeCollectActionResponse, Privy::Models::Wallets::PayoutResponse)]
      end
    end

    WalletActionResponse = Wallets::WalletActionResponse
  end
end
