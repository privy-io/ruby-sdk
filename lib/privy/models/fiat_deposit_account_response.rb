# frozen_string_literal: true

module Privy
  module Models
    class FiatDepositAccountResponse < Privy::Internal::Type::BaseModel
      # @!attribute fiat_deposit_account
      #   A Bridge fiat deposit account linked to a wallet.
      #
      #   @return [Privy::Models::FiatDepositAccount]
      required :fiat_deposit_account, -> { Privy::FiatDepositAccount }

      # @!method initialize(fiat_deposit_account:)
      #   Response containing a single fiat deposit account.
      #
      #   @param fiat_deposit_account [Privy::Models::FiatDepositAccount] A Bridge fiat deposit account linked to a wallet.
    end
  end
end
