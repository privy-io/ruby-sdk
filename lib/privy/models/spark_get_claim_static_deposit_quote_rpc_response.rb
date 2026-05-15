# frozen_string_literal: true

module Privy
  module Models
    class SparkGetClaimStaticDepositQuoteRpcResponse < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::SparkGetClaimStaticDepositQuoteRpcResponse::Method]
      required :method_,
               enum: -> { Privy::SparkGetClaimStaticDepositQuoteRpcResponse::Method },
               api_name: :method

      # @!attribute data
      #   Data returned by the Spark `getClaimStaticDepositQuote` RPC.
      #
      #   @return [Privy::Models::SparkGetClaimStaticDepositQuoteRpcResponseData, nil]
      optional :data, -> { Privy::SparkGetClaimStaticDepositQuoteRpcResponseData }

      # @!method initialize(method_:, data: nil)
      #   Response to the Spark `getClaimStaticDepositQuote` RPC.
      #
      #   @param method_ [Symbol, Privy::Models::SparkGetClaimStaticDepositQuoteRpcResponse::Method]
      #
      #   @param data [Privy::Models::SparkGetClaimStaticDepositQuoteRpcResponseData] Data returned by the Spark `getClaimStaticDepositQuote` RPC.

      # @see Privy::Models::SparkGetClaimStaticDepositQuoteRpcResponse#method_
      module Method
        extend Privy::Internal::Type::Enum

        GET_CLAIM_STATIC_DEPOSIT_QUOTE = :getClaimStaticDepositQuote

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
