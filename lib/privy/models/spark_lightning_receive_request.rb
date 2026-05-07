# frozen_string_literal: true

module Privy
  module Models
    class SparkLightningReceiveRequest < Privy::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #
      #   @return [String]
      required :created_at, String

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

      # @!attribute invoice
      #
      #   @return [Object, nil]
      optional :invoice, Privy::Internal::Type::Unknown

      # @!attribute payment_preimage
      #
      #   @return [String, nil]
      optional :payment_preimage, String

      # @!attribute receiver_identity_public_key
      #
      #   @return [String, nil]
      optional :receiver_identity_public_key, String

      # @!attribute transfer
      #
      #   @return [Object, nil]
      optional :transfer, Privy::Internal::Type::Unknown

      # @!method initialize(id:, created_at:, network:, status:, typename:, updated_at:, invoice: nil, payment_preimage: nil, receiver_identity_public_key: nil, transfer: nil)
      #   A Spark Lightning receive request.
      #
      #   @param id [String]
      #   @param created_at [String]
      #   @param network [String]
      #   @param status [String]
      #   @param typename [String]
      #   @param updated_at [String]
      #   @param invoice [Object]
      #   @param payment_preimage [String]
      #   @param receiver_identity_public_key [String]
      #   @param transfer [Object]
    end
  end
end
