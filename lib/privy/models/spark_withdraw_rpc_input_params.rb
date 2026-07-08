# frozen_string_literal: true

module Privy
  module Models
    class SparkWithdrawRpcInputParams < Privy::Internal::Type::BaseModel
      # @!attribute exit_speed
      #   The exit speed for a cooperative withdrawal from Spark to L1.
      #
      #   @return [Symbol, Privy::Models::SparkExitSpeed]
      required :exit_speed, enum: -> { Privy::SparkExitSpeed }

      # @!attribute onchain_address
      #
      #   @return [String]
      required :onchain_address, String

      # @!attribute amount_sats
      #
      #   @return [Float, nil]
      optional :amount_sats, Float

      # @!attribute deduct_fee_from_withdrawal_amount
      #
      #   @return [Boolean, nil]
      optional :deduct_fee_from_withdrawal_amount, Privy::Internal::Type::Boolean

      # @!attribute fee_amount_sats
      #
      #   @return [Float, nil]
      optional :fee_amount_sats, Float

      # @!attribute fee_quote_id
      #
      #   @return [String, nil]
      optional :fee_quote_id, String

      # @!method initialize(exit_speed:, onchain_address:, amount_sats: nil, deduct_fee_from_withdrawal_amount: nil, fee_amount_sats: nil, fee_quote_id: nil)
      #   Parameters for the Spark `withdraw` RPC.
      #
      #   @param exit_speed [Symbol, Privy::Models::SparkExitSpeed] The exit speed for a cooperative withdrawal from Spark to L1.
      #
      #   @param onchain_address [String]
      #
      #   @param amount_sats [Float]
      #
      #   @param deduct_fee_from_withdrawal_amount [Boolean]
      #
      #   @param fee_amount_sats [Float]
      #
      #   @param fee_quote_id [String]
    end
  end
end
