# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      class ListWalletActionsQuery < Privy::Internal::Type::BaseModel
        # @!attribute cursor
        #   Cursor returned by the previous page.
        #
        #   @return [String, nil]
        optional :cursor, String

        # @!attribute limit
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute type
        #   Type of wallet action
        #
        #   @return [Symbol, Privy::Models::Wallets::WalletActionType, nil]
        optional :type, enum: -> { Privy::Wallets::WalletActionType }

        # @!method initialize(cursor: nil, limit: nil, type: nil)
        #   Query parameters for listing wallet actions.
        #
        #   @param cursor [String] Cursor returned by the previous page.
        #
        #   @param limit [Integer]
        #
        #   @param type [Symbol, Privy::Models::Wallets::WalletActionType] Type of wallet action
      end
    end
  end
end
