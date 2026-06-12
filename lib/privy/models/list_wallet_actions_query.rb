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

      # @!method initialize(cursor: nil, limit: nil)
      #   Query parameters for listing wallet actions.
      #
      #   @param cursor [String]
      #   @param limit [Float, nil]
    end
  end
end
