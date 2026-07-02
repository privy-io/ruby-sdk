# frozen_string_literal: true

module Privy
  module Models
    class SparkWithdrawRpcInput < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::SparkWithdrawRpcInput::Method]
      required :method_, enum: -> { Privy::SparkWithdrawRpcInput::Method }, api_name: :method

      # @!attribute params
      #   Parameters for the Spark `withdraw` RPC.
      #
      #   @return [Privy::Models::SparkWithdrawRpcInputParams]
      required :params, -> { Privy::SparkWithdrawRpcInputParams }

      # @!attribute network
      #   The Spark network.
      #
      #   @return [Symbol, Privy::Models::SparkNetwork, nil]
      optional :network, enum: -> { Privy::SparkNetwork }

      # @!method initialize(method_:, params:, network: nil)
      #   Withdraws from Spark to a Bitcoin L1 address (cooperative exit).
      #
      #   @param method_ [Symbol, Privy::Models::SparkWithdrawRpcInput::Method]
      #
      #   @param params [Privy::Models::SparkWithdrawRpcInputParams] Parameters for the Spark `withdraw` RPC.
      #
      #   @param network [Symbol, Privy::Models::SparkNetwork] The Spark network.

      # @see Privy::Models::SparkWithdrawRpcInput#method_
      module Method
        extend Privy::Internal::Type::Enum

        WITHDRAW = :withdraw

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
