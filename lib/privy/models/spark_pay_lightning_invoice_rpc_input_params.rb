# frozen_string_literal: true

module Privy
  module Models
    class SparkPayLightningInvoiceRpcInputParams < Privy::Internal::Type::BaseModel
      # @!attribute invoice
      #
      #   @return [String]
      required :invoice, String

      # @!attribute max_fee_sats
      #
      #   @return [Float]
      required :max_fee_sats, Float

      # @!attribute amount_sats_to_send
      #
      #   @return [Float, nil]
      optional :amount_sats_to_send, Float

      # @!attribute prefer_spark
      #
      #   @return [Boolean, nil]
      optional :prefer_spark, Privy::Internal::Type::Boolean

      # @!method initialize(invoice:, max_fee_sats:, amount_sats_to_send: nil, prefer_spark: nil)
      #   Parameters for the Spark `payLightningInvoice` RPC.
      #
      #   @param invoice [String]
      #   @param max_fee_sats [Float]
      #   @param amount_sats_to_send [Float]
      #   @param prefer_spark [Boolean]
    end
  end
end
