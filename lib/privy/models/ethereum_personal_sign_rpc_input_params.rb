# frozen_string_literal: true

module Privy
  module Models
    class EthereumPersonalSignRpcInputParams < Privy::Internal::Type::BaseModel
      # @!attribute encoding
      #
      #   @return [Symbol, Privy::Models::EthereumPersonalSignRpcInputParams::Encoding]
      required :encoding, enum: -> { Privy::EthereumPersonalSignRpcInputParams::Encoding }

      # @!attribute message
      #
      #   @return [String]
      required :message, String

      # @!method initialize(encoding:, message:)
      #   Parameters for the EVM `personal_sign` RPC.
      #
      #   @param encoding [Symbol, Privy::Models::EthereumPersonalSignRpcInputParams::Encoding]
      #   @param message [String]

      # @see Privy::Models::EthereumPersonalSignRpcInputParams#encoding
      module Encoding
        extend Privy::Internal::Type::Enum

        UTF_8 = :"utf-8"
        HEX = :hex

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
