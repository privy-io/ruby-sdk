# frozen_string_literal: true

module Privy
  module Models
    class SolanaSignMessageRpcResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #   Data returned by the SVM `signMessage` RPC.
      #
      #   @return [Privy::Models::SolanaSignMessageRpcResponseData]
      required :data, -> { Privy::SolanaSignMessageRpcResponseData }

      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::SolanaSignMessageRpcResponse::Method]
      required :method_, enum: -> { Privy::SolanaSignMessageRpcResponse::Method }, api_name: :method

      # @!method initialize(data:, method_:)
      #   Response to the SVM `signMessage` RPC.
      #
      #   @param data [Privy::Models::SolanaSignMessageRpcResponseData] Data returned by the SVM `signMessage` RPC.
      #
      #   @param method_ [Symbol, Privy::Models::SolanaSignMessageRpcResponse::Method]

      # @see Privy::Models::SolanaSignMessageRpcResponse#method_
      module Method
        extend Privy::Internal::Type::Enum

        SIGN_MESSAGE = :signMessage

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
