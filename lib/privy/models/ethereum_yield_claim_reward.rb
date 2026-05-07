# frozen_string_literal: true

module Privy
  module Models
    class EthereumYieldClaimReward < Privy::Internal::Type::BaseModel
      # @!attribute amount
      #   Amount claimed in the smallest unit.
      #
      #   @return [String]
      required :amount, String

      # @!attribute token_address
      #   Reward token contract address.
      #
      #   @return [String]
      required :token_address, String

      # @!attribute token_symbol
      #   Reward token symbol (e.g., "MORPHO").
      #
      #   @return [String]
      required :token_symbol, String

      # @!method initialize(amount:, token_address:, token_symbol:)
      #   A single reward token claimed from vault participation.
      #
      #   @param amount [String] Amount claimed in the smallest unit.
      #
      #   @param token_address [String] Reward token contract address.
      #
      #   @param token_symbol [String] Reward token symbol (e.g., "MORPHO").
    end
  end
end
