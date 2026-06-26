# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      class EarnIncentiveRewardEntry < Privy::Internal::Type::BaseModel
        # @!attribute amount_claimed
        #   Total amount already claimed, in smallest unit.
        #
        #   @return [String]
        required :amount_claimed, String

        # @!attribute amount_unclaimed
        #   Amount available to claim on-chain but not yet claimed, in smallest unit.
        #
        #   @return [String]
        required :amount_unclaimed, String

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
        #   Number of decimals for the reward token.
        #
        #   @return [Integer, nil]
        optional :token_decimals, Integer

        # @!method initialize(amount_claimed:, amount_unclaimed:, token_address:, token_symbol:, token_decimals: nil)
        #   A reward token with claimed and unclaimed amounts.
        #
        #   @param amount_claimed [String] Total amount already claimed, in smallest unit.
        #
        #   @param amount_unclaimed [String] Amount available to claim on-chain but not yet claimed, in smallest unit.
        #
        #   @param token_address [String] Address of the reward token.
        #
        #   @param token_symbol [String] Symbol of the reward token (e.g. "MORPHO").
        #
        #   @param token_decimals [Integer] Number of decimals for the reward token.
      end
    end
  end
end
