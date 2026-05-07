# frozen_string_literal: true

module Privy
  module Models
    class SparkSignMessageWithIdentityKeyRpcInput < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::SparkSignMessageWithIdentityKeyRpcInput::Method]
      required :method_,
               enum: -> {
                 Privy::SparkSignMessageWithIdentityKeyRpcInput::Method
               },
               api_name: :method

      # @!attribute params
      #   Parameters for the Spark `signMessageWithIdentityKey` RPC.
      #
      #   @return [Privy::Models::SparkSignMessageWithIdentityKeyRpcInputParams]
      required :params, -> { Privy::SparkSignMessageWithIdentityKeyRpcInputParams }

      # @!attribute network
      #   The Spark network.
      #
      #   @return [Symbol, Privy::Models::SparkNetwork, nil]
      optional :network, enum: -> { Privy::SparkNetwork }

      # @!method initialize(method_:, params:, network: nil)
      #   Signs a message with the Spark identity key.
      #
      #   @param method_ [Symbol, Privy::Models::SparkSignMessageWithIdentityKeyRpcInput::Method]
      #
      #   @param params [Privy::Models::SparkSignMessageWithIdentityKeyRpcInputParams] Parameters for the Spark `signMessageWithIdentityKey` RPC.
      #
      #   @param network [Symbol, Privy::Models::SparkNetwork] The Spark network.

      # @see Privy::Models::SparkSignMessageWithIdentityKeyRpcInput#method_
      module Method
        extend Privy::Internal::Type::Enum

        SIGN_MESSAGE_WITH_IDENTITY_KEY = :signMessageWithIdentityKey

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
