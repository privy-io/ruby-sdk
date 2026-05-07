# frozen_string_literal: true

module Privy
  module Models
    class SparkSignMessageWithIdentityKeyRpcResponse < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::SparkSignMessageWithIdentityKeyRpcResponse::Method]
      required :method_,
               enum: -> { Privy::SparkSignMessageWithIdentityKeyRpcResponse::Method },
               api_name: :method

      # @!attribute data
      #   Data returned by the Spark `signMessageWithIdentityKey` RPC.
      #
      #   @return [Privy::Models::SparkSignMessageWithIdentityKeyRpcResponseData, nil]
      optional :data, -> { Privy::SparkSignMessageWithIdentityKeyRpcResponseData }

      # @!method initialize(method_:, data: nil)
      #   Response to the Spark `signMessageWithIdentityKey` RPC.
      #
      #   @param method_ [Symbol, Privy::Models::SparkSignMessageWithIdentityKeyRpcResponse::Method]
      #
      #   @param data [Privy::Models::SparkSignMessageWithIdentityKeyRpcResponseData] Data returned by the Spark `signMessageWithIdentityKey` RPC.

      # @see Privy::Models::SparkSignMessageWithIdentityKeyRpcResponse#method_
      module Method
        extend Privy::Internal::Type::Enum

        SIGN_MESSAGE_WITH_IDENTITY_KEY = :signMessageWithIdentityKey

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
