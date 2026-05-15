# frozen_string_literal: true

module Privy
  module Models
    class SparkTransferRpcInput < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::SparkTransferRpcInput::Method]
      required :method_, enum: -> { Privy::SparkTransferRpcInput::Method }, api_name: :method

      # @!attribute params
      #   Parameters for the Spark `transfer` RPC.
      #
      #   @return [Privy::Models::SparkTransferRpcInputParams]
      required :params, -> { Privy::SparkTransferRpcInputParams }

      # @!attribute network
      #   The Spark network.
      #
      #   @return [Symbol, Privy::Models::SparkNetwork, nil]
      optional :network, enum: -> { Privy::SparkNetwork }

      # @!method initialize(method_:, params:, network: nil)
      #   Transfers satoshis to a Spark address.
      #
      #   @param method_ [Symbol, Privy::Models::SparkTransferRpcInput::Method]
      #
      #   @param params [Privy::Models::SparkTransferRpcInputParams] Parameters for the Spark `transfer` RPC.
      #
      #   @param network [Symbol, Privy::Models::SparkNetwork] The Spark network.

      # @see Privy::Models::SparkTransferRpcInput#method_
      module Method
        extend Privy::Internal::Type::Enum

        TRANSFER = :transfer

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
