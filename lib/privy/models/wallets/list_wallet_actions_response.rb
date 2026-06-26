# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      class ListWalletActionsResponse < Privy::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Privy::Models::Wallets::SwapActionResponse, Privy::Models::Wallets::TransferActionResponse, Privy::Models::Wallets::EarnDepositActionResponse, Privy::Models::Wallets::EarnWithdrawActionResponse, Privy::Models::Wallets::EarnIncentiveClaimActionResponse>]
        required :data, -> { Privy::Internal::Type::ArrayOf[union: Privy::Wallets::WalletActionResponse] }

        # @!attribute next_cursor
        #
        #   @return [String, nil]
        required :next_cursor, String, nil?: true

        # @!method initialize(data:, next_cursor:)
        #   Paginated list of wallet actions.
        #
        #   @param data [Array<Privy::Models::Wallets::SwapActionResponse, Privy::Models::Wallets::TransferActionResponse, Privy::Models::Wallets::EarnDepositActionResponse, Privy::Models::Wallets::EarnWithdrawActionResponse, Privy::Models::Wallets::EarnIncentiveClaimActionResponse>]
        #   @param next_cursor [String, nil]
      end
    end
  end
end
