# frozen_string_literal: true

module Privy
  module Models
    class BridgeCryptoTransferMetadata < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::BridgeCryptoTransferMetadata::Method]
      required :method_, enum: -> { Privy::BridgeCryptoTransferMetadata::Method }, api_name: :method

      # @!attribute source_wallet_address
      #   The wallet address that sent the transfer.
      #
      #   @return [String]
      required :source_wallet_address, String

      # @!attribute transfer_id
      #
      #   @return [String]
      required :transfer_id, String

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::BridgeCryptoTransferMetadata::Type]
      required :type, enum: -> { Privy::BridgeCryptoTransferMetadata::Type }

      # @!method initialize(method_:, source_wallet_address:, transfer_id:, type:)
      #   Bridge metadata for a crypto deposit via transfer.
      #
      #   @param method_ [Symbol, Privy::Models::BridgeCryptoTransferMetadata::Method]
      #
      #   @param source_wallet_address [String] The wallet address that sent the transfer.
      #
      #   @param transfer_id [String]
      #
      #   @param type [Symbol, Privy::Models::BridgeCryptoTransferMetadata::Type]

      # @see Privy::Models::BridgeCryptoTransferMetadata#method_
      module Method
        extend Privy::Internal::Type::Enum

        TRANSFER = :transfer

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::BridgeCryptoTransferMetadata#type
      module Type
        extend Privy::Internal::Type::Enum

        CRYPTO_DEPOSIT = :crypto_deposit

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
