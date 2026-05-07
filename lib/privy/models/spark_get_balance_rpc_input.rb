# frozen_string_literal: true

module Privy
  module Models
    class SparkGetBalanceRpcInput < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::SparkGetBalanceRpcInput::Method]
      required :method_, enum: -> { Privy::SparkGetBalanceRpcInput::Method }, api_name: :method

      # @!attribute network
      #   The Spark network.
      #
      #   @return [Symbol, Privy::Models::SparkNetwork, nil]
      optional :network, enum: -> { Privy::SparkNetwork }

      # @!method initialize(method_:, network: nil)
      #   Gets the balance of the Spark wallet.
      #
      #   @param method_ [Symbol, Privy::Models::SparkGetBalanceRpcInput::Method]
      #
      #   @param network [Symbol, Privy::Models::SparkNetwork] The Spark network.

      # @see Privy::Models::SparkGetBalanceRpcInput#method_
      module Method
        extend Privy::Internal::Type::Enum

        GET_BALANCE = :getBalance

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
