# frozen_string_literal: true

module Privy
  module Models
    class BridgeFiatTransferMetadata < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::BridgeFiatTransferMetadata::Method]
      required :method_, enum: -> { Privy::BridgeFiatTransferMetadata::Method }, api_name: :method

      # @!attribute transfer_id
      #
      #   @return [String]
      required :transfer_id, String

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::BridgeFiatTransferMetadata::Type]
      required :type, enum: -> { Privy::BridgeFiatTransferMetadata::Type }

      # @!method initialize(method_:, transfer_id:, type:)
      #   Bridge metadata for a fiat deposit via transfer.
      #
      #   @param method_ [Symbol, Privy::Models::BridgeFiatTransferMetadata::Method]
      #   @param transfer_id [String]
      #   @param type [Symbol, Privy::Models::BridgeFiatTransferMetadata::Type]

      # @see Privy::Models::BridgeFiatTransferMetadata#method_
      module Method
        extend Privy::Internal::Type::Enum

        TRANSFER = :transfer

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::BridgeFiatTransferMetadata#type
      module Type
        extend Privy::Internal::Type::Enum

        FIAT_DEPOSIT = :fiat_deposit

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
