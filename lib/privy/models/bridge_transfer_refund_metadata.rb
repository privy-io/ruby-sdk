# frozen_string_literal: true

module Privy
  module Models
    class BridgeTransferRefundMetadata < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::BridgeTransferRefundMetadata::Method]
      required :method_, enum: -> { Privy::BridgeTransferRefundMetadata::Method }, api_name: :method

      # @!attribute transfer_id
      #
      #   @return [String]
      required :transfer_id, String

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::BridgeTransferRefundMetadata::Type]
      required :type, enum: -> { Privy::BridgeTransferRefundMetadata::Type }

      # @!attribute original_transaction_hash
      #   The original transfer transaction hash (if available).
      #
      #   @return [String, nil]
      optional :original_transaction_hash, String

      # @!method initialize(method_:, transfer_id:, type:, original_transaction_hash: nil)
      #   Bridge metadata for a transfer refund.
      #
      #   @param method_ [Symbol, Privy::Models::BridgeTransferRefundMetadata::Method]
      #
      #   @param transfer_id [String]
      #
      #   @param type [Symbol, Privy::Models::BridgeTransferRefundMetadata::Type]
      #
      #   @param original_transaction_hash [String] The original transfer transaction hash (if available).

      # @see Privy::Models::BridgeTransferRefundMetadata#method_
      module Method
        extend Privy::Internal::Type::Enum

        TRANSFER = :transfer

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::BridgeTransferRefundMetadata#type
      module Type
        extend Privy::Internal::Type::Enum

        REFUND = :refund

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
