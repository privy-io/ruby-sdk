# frozen_string_literal: true

module Privy
  module Models
    class SparkBalance < Privy::Internal::Type::BaseModel
      # @!attribute balance
      #
      #   @return [String]
      required :balance, String

      # @!attribute token_balances
      #
      #   @return [Hash{Symbol=>Privy::Models::SparkTokenBalance}]
      required :token_balances, -> { Privy::Internal::Type::HashOf[Privy::SparkTokenBalance] }

      # @!method initialize(balance:, token_balances:)
      #   The balance of a Spark wallet.
      #
      #   @param balance [String]
      #   @param token_balances [Hash{Symbol=>Privy::Models::SparkTokenBalance}]
    end
  end
end
