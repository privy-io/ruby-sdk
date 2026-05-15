# frozen_string_literal: true

module Privy
  module Models
    class EthereumSecp256k1SignRpcResponseData < Privy::Internal::Type::BaseModel
      # @!attribute encoding
      #
      #   @return [Symbol, Privy::Models::EthereumSecp256k1SignRpcResponseData::Encoding]
      required :encoding, enum: -> { Privy::EthereumSecp256k1SignRpcResponseData::Encoding }

      # @!attribute signature
      #   A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
      #   bytes).
      #
      #   @return [String]
      required :signature, String

      # @!method initialize(encoding:, signature:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::EthereumSecp256k1SignRpcResponseData} for more details.
      #
      #   Data returned by the EVM `secp256k1_sign` RPC.
      #
      #   @param encoding [Symbol, Privy::Models::EthereumSecp256k1SignRpcResponseData::Encoding]
      #
      #   @param signature [String] A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000 byt

      # @see Privy::Models::EthereumSecp256k1SignRpcResponseData#encoding
      module Encoding
        extend Privy::Internal::Type::Enum

        HEX = :hex

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
