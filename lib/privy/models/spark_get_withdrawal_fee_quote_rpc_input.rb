# frozen_string_literal: true

module Privy
  module Models
    class SparkGetWithdrawalFeeQuoteRpcInput < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::SparkGetWithdrawalFeeQuoteRpcInput::Method]
      required :method_, enum: -> { Privy::SparkGetWithdrawalFeeQuoteRpcInput::Method }, api_name: :method

      # @!attribute params
      #   Parameters for the Spark `getWithdrawalFeeQuote` RPC.
      #
      #   @return [Privy::Models::SparkGetWithdrawalFeeQuoteRpcInputParams]
      required :params, -> { Privy::SparkGetWithdrawalFeeQuoteRpcInputParams }

      # @!attribute network
      #   The Spark network.
      #
      #   @return [Symbol, Privy::Models::SparkNetwork, nil]
      optional :network, enum: -> { Privy::SparkNetwork }

      # @!method initialize(method_:, params:, network: nil)
      #   Gets a fee quote for withdrawing from Spark to a Bitcoin L1 address.
      #
      #   @param method_ [Symbol, Privy::Models::SparkGetWithdrawalFeeQuoteRpcInput::Method]
      #
      #   @param params [Privy::Models::SparkGetWithdrawalFeeQuoteRpcInputParams] Parameters for the Spark `getWithdrawalFeeQuote` RPC.
      #
      #   @param network [Symbol, Privy::Models::SparkNetwork] The Spark network.

      # @see Privy::Models::SparkGetWithdrawalFeeQuoteRpcInput#method_
      module Method
        extend Privy::Internal::Type::Enum

        GET_WITHDRAWAL_FEE_QUOTE = :getWithdrawalFeeQuote

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
