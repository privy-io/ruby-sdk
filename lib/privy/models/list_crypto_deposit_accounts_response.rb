# frozen_string_literal: true

module Privy
  module Models
    class ListCryptoDepositAccountsResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Privy::Models::CryptoDepositAddressRoute>]
      required :data, -> { Privy::Internal::Type::ArrayOf[Privy::CryptoDepositAddressRoute] }

      # @!attribute next_cursor
      #
      #   @return [String, nil]
      required :next_cursor, String, nil?: true

      # @!method initialize(data:, next_cursor:)
      #   A page of active crypto deposit accounts for a destination wallet.
      #
      #   @param data [Array<Privy::Models::CryptoDepositAddressRoute>]
      #   @param next_cursor [String, nil]
    end
  end
end
