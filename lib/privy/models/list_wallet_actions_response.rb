# frozen_string_literal: true

module Privy
  module Models
    class ListWalletActionsResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Privy::Models::SwapActionResponse, Privy::Models::TransferActionResponse, Privy::Models::EarnDepositActionResponse, Privy::Models::EarnWithdrawActionResponse, Privy::Models::EarnIncentiveClaimActionResponse>]
      required :data, -> { Privy::Internal::Type::ArrayOf[union: Privy::WalletActionResponse] }

      # @!attribute next_cursor
      #
      #   @return [String, nil]
      required :next_cursor, String, nil?: true

      # @!method initialize(data:, next_cursor:)
      #   Paginated list of wallet actions.
      #
      #   @param data [Array<Privy::Models::SwapActionResponse, Privy::Models::TransferActionResponse, Privy::Models::EarnDepositActionResponse, Privy::Models::EarnWithdrawActionResponse, Privy::Models::EarnIncentiveClaimActionResponse>]
      #   @param next_cursor [String, nil]
    end
  end
end
