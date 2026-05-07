# frozen_string_literal: true

module Privy
  module Models
    class SparkTransferTokensRpcInput < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::SparkTransferTokensRpcInput::Method]
      required :method_, enum: -> { Privy::SparkTransferTokensRpcInput::Method }, api_name: :method

      # @!attribute params
      #   Parameters for the Spark `transferTokens` RPC.
      #
      #   @return [Privy::Models::SparkTransferTokensRpcInputParams]
      required :params, -> { Privy::SparkTransferTokensRpcInputParams }

      # @!attribute network
      #   The Spark network.
      #
      #   @return [Symbol, Privy::Models::SparkNetwork, nil]
      optional :network, enum: -> { Privy::SparkNetwork }

      # @!method initialize(method_:, params:, network: nil)
      #   Transfers tokens to a Spark address.
      #
      #   @param method_ [Symbol, Privy::Models::SparkTransferTokensRpcInput::Method]
      #
      #   @param params [Privy::Models::SparkTransferTokensRpcInputParams] Parameters for the Spark `transferTokens` RPC.
      #
      #   @param network [Symbol, Privy::Models::SparkNetwork] The Spark network.

      # @see Privy::Models::SparkTransferTokensRpcInput#method_
      module Method
        extend Privy::Internal::Type::Enum

        TRANSFER_TOKENS = :transferTokens

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
