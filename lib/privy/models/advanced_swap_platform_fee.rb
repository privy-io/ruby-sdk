# frozen_string_literal: true

module Privy
  module Models
    class AdvancedSwapPlatformFee < Privy::Internal::Type::BaseModel
      # @!attribute token
      #   Token the fee was taken from (output token in v1).
      #
      #   @return [String]
      required :token, String

      # @!attribute amount
      #   Fee amount in the smallest unit of the fee token.
      #
      #   @return [String]
      required :amount, String

      # @!attribute bps
      #   Fee in basis points.
      #
      #   @return [Integer]
      required :bps, Integer

      # @!method initialize(token:, amount:, bps:)
      #   Platform fee collected on a swap.
      #
      #   @param token [String] Token the fee was taken from (output token in v1).
      #
      #   @param amount [String] Fee amount in the smallest unit of the fee token.
      #
      #   @param bps [Integer] Fee in basis points.
    end
  end
end
