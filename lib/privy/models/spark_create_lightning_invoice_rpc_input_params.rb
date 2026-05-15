# frozen_string_literal: true

module Privy
  module Models
    class SparkCreateLightningInvoiceRpcInputParams < Privy::Internal::Type::BaseModel
      # @!attribute amount_sats
      #
      #   @return [Float]
      required :amount_sats, Float

      # @!attribute description_hash
      #
      #   @return [String, nil]
      optional :description_hash, String

      # @!attribute expiry_seconds
      #
      #   @return [Float, nil]
      optional :expiry_seconds, Float

      # @!attribute include_spark_address
      #
      #   @return [Boolean, nil]
      optional :include_spark_address, Privy::Internal::Type::Boolean

      # @!attribute memo
      #
      #   @return [String, nil]
      optional :memo, String

      # @!attribute receiver_identity_pubkey
      #
      #   @return [String, nil]
      optional :receiver_identity_pubkey, String

      # @!method initialize(amount_sats:, description_hash: nil, expiry_seconds: nil, include_spark_address: nil, memo: nil, receiver_identity_pubkey: nil)
      #   Parameters for the Spark `createLightningInvoice` RPC.
      #
      #   @param amount_sats [Float]
      #   @param description_hash [String]
      #   @param expiry_seconds [Float]
      #   @param include_spark_address [Boolean]
      #   @param memo [String]
      #   @param receiver_identity_pubkey [String]
    end
  end
end
