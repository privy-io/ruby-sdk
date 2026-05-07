# frozen_string_literal: true

module Privy
  module Models
    # Response for a wallet action, discriminated on type.
    module WalletActionResponse
      extend Privy::Internal::Type::Union

      discriminator :type

      # Response for a swap action.
      variant :swap, -> { Privy::SwapActionResponse }

      # Response for a transfer action.
      variant :transfer, -> { Privy::TransferActionResponse }

      # Response for an earn deposit action.
      variant :earn_deposit, -> { Privy::EarnDepositActionResponse }

      # Response for an earn withdraw action.
      variant :earn_withdraw, -> { Privy::EarnWithdrawActionResponse }

      # Response for an earn incentive claim action.
      variant :earn_incentive_claim, -> { Privy::EarnIncentiveClaimActionResponse }

      # @!method self.variants
      #   @return [Array(Privy::Models::SwapActionResponse, Privy::Models::TransferActionResponse, Privy::Models::EarnDepositActionResponse, Privy::Models::EarnWithdrawActionResponse, Privy::Models::EarnIncentiveClaimActionResponse)]
    end
  end
end
