# frozen_string_literal: true

module Privy
  module Models
    class EthereumPersonalSignRpcResponseData < Privy::Internal::Type::BaseModel
      # @!attribute encoding
      #
      #   @return [Symbol, Privy::Models::EthereumPersonalSignRpcResponseData::Encoding]
      required :encoding, enum: -> { Privy::EthereumPersonalSignRpcResponseData::Encoding }

      # @!attribute signature
      #
      #   @return [String]
      required :signature, String

      # @!method initialize(encoding:, signature:)
      #   Data returned by the EVM `personal_sign` RPC.
      #
      #   @param encoding [Symbol, Privy::Models::EthereumPersonalSignRpcResponseData::Encoding]
      #   @param signature [String]

      # @see Privy::Models::EthereumPersonalSignRpcResponseData#encoding
      module Encoding
        extend Privy::Internal::Type::Enum

        HEX = :hex

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
