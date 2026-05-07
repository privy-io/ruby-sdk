# frozen_string_literal: true

module Privy
  module Models
    class SparkTransferRpcInputParams < Privy::Internal::Type::BaseModel
      # @!attribute amount_sats
      #
      #   @return [Float]
      required :amount_sats, Float

      # @!attribute receiver_spark_address
      #
      #   @return [String]
      required :receiver_spark_address, String

      # @!method initialize(amount_sats:, receiver_spark_address:)
      #   Parameters for the Spark `transfer` RPC.
      #
      #   @param amount_sats [Float]
      #   @param receiver_spark_address [String]
    end
  end
end
