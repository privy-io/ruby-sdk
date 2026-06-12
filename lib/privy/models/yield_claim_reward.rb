# frozen_string_literal: true

module Privy
  module Models
    class YieldClaimReward < Privy::Internal::Type::BaseModel
      # @!attribute amount
      #
      #   @return [String]
      required :amount, String

      # @!attribute token_address
      #
      #   @return [String]
      required :token_address, String

      # @!attribute token_symbol
      #
      #   @return [String]
      required :token_symbol, String

      # @!method initialize(amount:, token_address:, token_symbol:)
      #   A single reward token claimed from a yield vault.
      #
      #   @param amount [String]
      #   @param token_address [String]
      #   @param token_symbol [String]
    end
  end
end
