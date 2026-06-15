# frozen_string_literal: true

module Privy
  module Models
    class TronTransferContract < Privy::Internal::Type::BaseModel
      # @!attribute amount
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute owner_address
      #   Tron address in hex format: 41-prefixed, 42 hex characters (21 bytes), no 0x
      #   prefix.
      #
      #   @return [String]
      required :owner_address, String

      # @!attribute to_address
      #   Tron address in hex format: 41-prefixed, 42 hex characters (21 bytes), no 0x
      #   prefix.
      #
      #   @return [String]
      required :to_address, String

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::TronTransferContract::Type]
      required :type, enum: -> { Privy::TronTransferContract::Type }

      # @!method initialize(amount:, owner_address:, to_address:, type:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::TronTransferContract} for more details.
      #
      #   Tron native TRX transfer contract.
      #
      #   @param amount [Integer]
      #
      #   @param owner_address [String] Tron address in hex format: 41-prefixed, 42 hex characters (21 bytes), no 0x pre
      #
      #   @param to_address [String] Tron address in hex format: 41-prefixed, 42 hex characters (21 bytes), no 0x pre
      #
      #   @param type [Symbol, Privy::Models::TronTransferContract::Type]

      # @see Privy::Models::TronTransferContract#type
      module Type
        extend Privy::Internal::Type::Enum

        TRANSFER_CONTRACT = :TransferContract

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
