# frozen_string_literal: true

module Privy
  module Models
    class CreateCryptoDepositAccountResponse < Privy::Internal::Type::BaseModel
      # @!attribute deposit_accounts
      #
      #   @return [Array<Privy::Models::CryptoDepositAddressRoute>]
      required :deposit_accounts, -> { Privy::Internal::Type::ArrayOf[Privy::CryptoDepositAddressRoute] }

      # @!method initialize(deposit_accounts:)
      #   Response returned after creating a crypto deposit account.
      #
      #   @param deposit_accounts [Array<Privy::Models::CryptoDepositAddressRoute>]
    end
  end
end
