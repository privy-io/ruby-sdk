# frozen_string_literal: true

module Privy
  module Models
    class ListFiatDepositAccountsResponse < Privy::Internal::Type::BaseModel
      # @!attribute deposit_accounts
      #
      #   @return [Array<Privy::Models::FiatDepositAccount>]
      required :deposit_accounts, -> { Privy::Internal::Type::ArrayOf[Privy::FiatDepositAccount] }

      # @!attribute next_cursor
      #
      #   @return [String, nil]
      required :next_cursor, String, nil?: true

      # @!method initialize(deposit_accounts:, next_cursor:)
      #   A list of fiat deposit accounts linked to a wallet.
      #
      #   @param deposit_accounts [Array<Privy::Models::FiatDepositAccount>]
      #   @param next_cursor [String, nil]
    end
  end
end
