# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingTransactionsResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Privy::Models::CardIssuingTransactionResponse>]
      required :data, -> { Privy::Internal::Type::ArrayOf[Privy::CardIssuingTransactionResponse] }

      # @!attribute next_cursor
      #
      #   @return [String, nil]
      required :next_cursor, String, nil?: true

      # @!method initialize(data:, next_cursor:)
      #   A chronological list of card activity.
      #
      #   @param data [Array<Privy::Models::CardIssuingTransactionResponse>]
      #   @param next_cursor [String, nil]
    end
  end
end
