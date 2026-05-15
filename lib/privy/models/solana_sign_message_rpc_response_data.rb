# frozen_string_literal: true

module Privy
  module Models
    class SolanaSignMessageRpcResponseData < Privy::Internal::Type::BaseModel
      # @!attribute encoding
      #
      #   @return [Symbol, Privy::Models::SolanaSignMessageRpcResponseData::Encoding]
      required :encoding, enum: -> { Privy::SolanaSignMessageRpcResponseData::Encoding }

      # @!attribute signature
      #
      #   @return [String]
      required :signature, String

      # @!method initialize(encoding:, signature:)
      #   Data returned by the SVM `signMessage` RPC.
      #
      #   @param encoding [Symbol, Privy::Models::SolanaSignMessageRpcResponseData::Encoding]
      #   @param signature [String]

      # @see Privy::Models::SolanaSignMessageRpcResponseData#encoding
      module Encoding
        extend Privy::Internal::Type::Enum

        BASE64 = :base64

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
