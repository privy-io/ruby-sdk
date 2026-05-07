# frozen_string_literal: true

module Privy
  module Models
    class SparkTransfer < Privy::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute leaves
      #
      #   @return [Array<Privy::Models::SparkTransferLeaf>]
      required :leaves, -> { Privy::Internal::Type::ArrayOf[Privy::SparkTransferLeaf] }

      # @!attribute receiver_identity_public_key
      #
      #   @return [String]
      required :receiver_identity_public_key, String

      # @!attribute sender_identity_public_key
      #
      #   @return [String]
      required :sender_identity_public_key, String

      # @!attribute status
      #
      #   @return [String]
      required :status, String

      # @!attribute total_value
      #
      #   @return [Float]
      required :total_value, Float

      # @!attribute transfer_direction
      #
      #   @return [String]
      required :transfer_direction, String

      # @!attribute type
      #
      #   @return [String]
      required :type, String

      # @!attribute created_time
      #
      #   @return [String, nil]
      optional :created_time, String

      # @!attribute expiry_time
      #
      #   @return [String, nil]
      optional :expiry_time, String

      # @!attribute updated_time
      #
      #   @return [String, nil]
      optional :updated_time, String

      # @!method initialize(id:, leaves:, receiver_identity_public_key:, sender_identity_public_key:, status:, total_value:, transfer_direction:, type:, created_time: nil, expiry_time: nil, updated_time: nil)
      #   A Spark transfer.
      #
      #   @param id [String]
      #   @param leaves [Array<Privy::Models::SparkTransferLeaf>]
      #   @param receiver_identity_public_key [String]
      #   @param sender_identity_public_key [String]
      #   @param status [String]
      #   @param total_value [Float]
      #   @param transfer_direction [String]
      #   @param type [String]
      #   @param created_time [String]
      #   @param expiry_time [String]
      #   @param updated_time [String]
    end
  end
end
