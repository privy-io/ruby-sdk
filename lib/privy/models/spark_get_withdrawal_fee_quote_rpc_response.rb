# frozen_string_literal: true

module Privy
  module Models
    class SparkGetWithdrawalFeeQuoteRpcResponse < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::SparkGetWithdrawalFeeQuoteRpcResponse::Method]
      required :method_, enum: -> { Privy::SparkGetWithdrawalFeeQuoteRpcResponse::Method }, api_name: :method

      # @!attribute data
      #   A fee quote for a cooperative exit from Spark to Bitcoin L1.
      #
      #   @return [Privy::Models::SparkCoopExitFeeQuote, nil]
      optional :data, -> { Privy::SparkCoopExitFeeQuote }

      # @!method initialize(method_:, data: nil)
      #   Response to the Spark `getWithdrawalFeeQuote` RPC.
      #
      #   @param method_ [Symbol, Privy::Models::SparkGetWithdrawalFeeQuoteRpcResponse::Method]
      #
      #   @param data [Privy::Models::SparkCoopExitFeeQuote] A fee quote for a cooperative exit from Spark to Bitcoin L1.

      # @see Privy::Models::SparkGetWithdrawalFeeQuoteRpcResponse#method_
      module Method
        extend Privy::Internal::Type::Enum

        GET_WITHDRAWAL_FEE_QUOTE = :getWithdrawalFeeQuote

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
