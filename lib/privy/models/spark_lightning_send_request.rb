# frozen_string_literal: true

module Privy
  module Models
    class SparkLightningSendRequest < Privy::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #
      #   @return [String]
      required :created_at, String

      # @!attribute encoded_invoice
      #
      #   @return [String]
      required :encoded_invoice, String

      # @!attribute fee
      #   The fee for a Spark Lightning payment.
      #
      #   @return [Privy::Models::SparkLightningFee]
      required :fee, -> { Privy::SparkLightningFee }

      # @!attribute idempotency_key
      #
      #   @return [String]
      required :idempotency_key, String

      # @!attribute network
      #
      #   @return [String]
      required :network, String

      # @!attribute status
      #
      #   @return [String]
      required :status, String

      # @!attribute typename
      #
      #   @return [String]
      required :typename, String

      # @!attribute updated_at
      #
      #   @return [String]
      required :updated_at, String

      # @!attribute payment_preimage
      #
      #   @return [String, nil]
      optional :payment_preimage, String

      # @!attribute transfer
      #
      #   @return [Object, nil]
      optional :transfer, Privy::Internal::Type::Unknown

      # @!method initialize(id:, created_at:, encoded_invoice:, fee:, idempotency_key:, network:, status:, typename:, updated_at:, payment_preimage: nil, transfer: nil)
      #   A Spark Lightning send request.
      #
      #   @param id [String]
      #
      #   @param created_at [String]
      #
      #   @param encoded_invoice [String]
      #
      #   @param fee [Privy::Models::SparkLightningFee] The fee for a Spark Lightning payment.
      #
      #   @param idempotency_key [String]
      #
      #   @param network [String]
      #
      #   @param status [String]
      #
      #   @param typename [String]
      #
      #   @param updated_at [String]
      #
      #   @param payment_preimage [String]
      #
      #   @param transfer [Object]
    end
  end
end
