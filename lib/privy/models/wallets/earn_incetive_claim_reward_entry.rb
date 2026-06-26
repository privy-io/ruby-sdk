# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      class EarnIncetiveClaimRewardEntry < Privy::Internal::Type::BaseModel
        # @!attribute amount
        #   Claimable amount in base units.
        #
        #   @return [String]
        required :amount, String

        # @!attribute token_address
        #   Address of the reward token.
        #
        #   @return [String]
        required :token_address, String

        # @!attribute token_symbol
        #   Symbol of the reward token (e.g. "MORPHO").
        #
        #   @return [String]
        required :token_symbol, String

        # @!attribute token_decimals
        #   Number of decimal places for the reward token.
        #
        #   @return [Integer, nil]
        optional :token_decimals, Integer

        # @!method initialize(amount:, token_address:, token_symbol:, token_decimals: nil)
        #   A specific reward token and amount associated with an earn incentive claim.
        #
        #   @param amount [String] Claimable amount in base units.
        #
        #   @param token_address [String] Address of the reward token.
        #
        #   @param token_symbol [String] Symbol of the reward token (e.g. "MORPHO").
        #
        #   @param token_decimals [Integer] Number of decimal places for the reward token.
      end
    end
  end
end
