# frozen_string_literal: true

module Privy
  module Models
    class SolanaSignMessageRpcInputParams < Privy::Internal::Type::BaseModel
      # @!attribute encoding
      #
      #   @return [Symbol, Privy::Models::SolanaSignMessageRpcInputParams::Encoding]
      required :encoding, enum: -> { Privy::SolanaSignMessageRpcInputParams::Encoding }

      # @!attribute message
      #
      #   @return [String]
      required :message, String

      # @!method initialize(encoding:, message:)
      #   Parameters for the SVM `signMessage` RPC.
      #
      #   @param encoding [Symbol, Privy::Models::SolanaSignMessageRpcInputParams::Encoding]
      #   @param message [String]

      # @see Privy::Models::SolanaSignMessageRpcInputParams#encoding
      module Encoding
        extend Privy::Internal::Type::Enum

        BASE64 = :base64

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
