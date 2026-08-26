# frozen_string_literal: true

module Privy
  module Models
    class CreateCryptoDepositAccountResponse < Privy::Internal::Type::BaseModel
      # @!attribute deposit_addresses
      #
      #   @return [Array<Privy::Models::CryptoDepositAddressRoute>]
      required :deposit_addresses, -> { Privy::Internal::Type::ArrayOf[Privy::CryptoDepositAddressRoute] }

      # @!method initialize(deposit_addresses:)
      #   Response returned after creating a crypto deposit account.
      #
      #   @param deposit_addresses [Array<Privy::Models::CryptoDepositAddressRoute>]
    end
  end
end
