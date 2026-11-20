# frozen_string_literal: true

module Privy
  module Models
    class ListCryptoDepositAccountsResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #   Items in this page.
      #
      #   @return [Array<Privy::Models::CryptoDepositAddressRoute>]
      required :data, -> { Privy::Internal::Type::ArrayOf[Privy::CryptoDepositAddressRoute] }

      # @!attribute next_cursor
      #   Cursor for the next page. Null when there are no further pages.
      #
      #   @return [String, nil]
      required :next_cursor, String, nil?: true

      # @!method initialize(data:, next_cursor:)
      #   A page of active crypto deposit accounts for a destination wallet.
      #
      #   @param data [Array<Privy::Models::CryptoDepositAddressRoute>] Items in this page.
      #
      #   @param next_cursor [String, nil] Cursor for the next page. Null when there are no further pages.
    end
  end
end
