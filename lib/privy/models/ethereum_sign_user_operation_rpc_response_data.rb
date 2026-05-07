# frozen_string_literal: true

module Privy
  module Models
    class EthereumSignUserOperationRpcResponseData < Privy::Internal::Type::BaseModel
      # @!attribute encoding
      #
      #   @return [Symbol, Privy::Models::EthereumSignUserOperationRpcResponseData::Encoding]
      required :encoding, enum: -> { Privy::EthereumSignUserOperationRpcResponseData::Encoding }

      # @!attribute signature
      #
      #   @return [String]
      required :signature, String

      # @!method initialize(encoding:, signature:)
      #   Data returned by the EVM `eth_signUserOperation` RPC.
      #
      #   @param encoding [Symbol, Privy::Models::EthereumSignUserOperationRpcResponseData::Encoding]
      #   @param signature [String]

      # @see Privy::Models::EthereumSignUserOperationRpcResponseData#encoding
      module Encoding
        extend Privy::Internal::Type::Enum

        HEX = :hex

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
