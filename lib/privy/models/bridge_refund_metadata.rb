# frozen_string_literal: true

module Privy
  module Models
    class BridgeRefundMetadata < Privy::Internal::Type::BaseModel
      # @!attribute drain_id
      #
      #   @return [String]
      required :drain_id, String

      # @!attribute liquidation_address_id
      #
      #   @return [String]
      required :liquidation_address_id, String

      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::BridgeRefundMetadata::Method]
      required :method_, enum: -> { Privy::BridgeRefundMetadata::Method }, api_name: :method

      # @!attribute original_transaction_hash
      #   The original deposit transaction hash that triggered the failed drain.
      #
      #   @return [String]
      required :original_transaction_hash, String

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::BridgeRefundMetadata::Type]
      required :type, enum: -> { Privy::BridgeRefundMetadata::Type }

      # @!method initialize(drain_id:, liquidation_address_id:, method_:, original_transaction_hash:, type:)
      #   Bridge metadata for a refund via liquidation address.
      #
      #   @param drain_id [String]
      #
      #   @param liquidation_address_id [String]
      #
      #   @param method_ [Symbol, Privy::Models::BridgeRefundMetadata::Method]
      #
      #   @param original_transaction_hash [String] The original deposit transaction hash that triggered the failed drain.
      #
      #   @param type [Symbol, Privy::Models::BridgeRefundMetadata::Type]

      # @see Privy::Models::BridgeRefundMetadata#method_
      module Method
        extend Privy::Internal::Type::Enum

        LIQUIDATION_ADDRESS = :liquidation_address

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::BridgeRefundMetadata#type
      module Type
        extend Privy::Internal::Type::Enum

        REFUND = :refund

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
