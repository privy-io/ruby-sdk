# frozen_string_literal: true

module Privy
  module Models
    class ListWalletActionsQuery < Privy::Internal::Type::BaseModel
      # @!attribute cursor
      #
      #   @return [String, nil]
      optional :cursor, String

      # @!attribute limit
      #
      #   @return [Float, nil]
      optional :limit, Float, nil?: true

      # @!attribute type
      #   Type of wallet action
      #
      #   @return [Symbol, Privy::Models::WalletActionType, nil]
      optional :type, enum: -> { Privy::WalletActionType }

      # @!method initialize(cursor: nil, limit: nil, type: nil)
      #   Query parameters for listing wallet actions.
      #
      #   @param cursor [String]
      #
      #   @param limit [Float, nil]
      #
      #   @param type [Symbol, Privy::Models::WalletActionType] Type of wallet action
    end
  end
end
