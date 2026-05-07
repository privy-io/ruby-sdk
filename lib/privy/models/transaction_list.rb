# frozen_string_literal: true

module Privy
  module Models
    class TransactionList < Privy::Internal::Type::BaseModel
      # @!attribute transactions
      #
      #   @return [Array<Privy::Models::Transaction>]
      required :transactions, -> { Privy::Internal::Type::ArrayOf[Privy::Transaction] }

      # @!method initialize(transactions:)
      #   A list of transactions.
      #
      #   @param transactions [Array<Privy::Models::Transaction>]
    end
  end
end
