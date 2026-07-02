# frozen_string_literal: true

module Privy
  module Models
    class SparkGetWithdrawalFeeQuoteRpcInputParams < Privy::Internal::Type::BaseModel
      # @!attribute amount_sats
      #
      #   @return [Float]
      required :amount_sats, Float

      # @!attribute onchain_address
      #
      #   @return [String]
      required :onchain_address, String

      # @!method initialize(amount_sats:, onchain_address:)
      #   Parameters for the Spark `getWithdrawalFeeQuote` RPC.
      #
      #   @param amount_sats [Float]
      #   @param onchain_address [String]
    end
  end
end
