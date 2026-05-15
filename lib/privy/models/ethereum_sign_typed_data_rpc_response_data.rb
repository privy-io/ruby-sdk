# frozen_string_literal: true

module Privy
  module Models
    class EthereumSignTypedDataRpcResponseData < Privy::Internal::Type::BaseModel
      # @!attribute encoding
      #
      #   @return [Symbol, Privy::Models::EthereumSignTypedDataRpcResponseData::Encoding]
      required :encoding, enum: -> { Privy::EthereumSignTypedDataRpcResponseData::Encoding }

      # @!attribute signature
      #
      #   @return [String]
      required :signature, String

      # @!method initialize(encoding:, signature:)
      #   Data returned by the EVM `eth_signTypedData_v4` RPC.
      #
      #   @param encoding [Symbol, Privy::Models::EthereumSignTypedDataRpcResponseData::Encoding]
      #   @param signature [String]

      # @see Privy::Models::EthereumSignTypedDataRpcResponseData#encoding
      module Encoding
        extend Privy::Internal::Type::Enum

        HEX = :hex

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
