# frozen_string_literal: true

module Privy
  module Models
    class SparkClaimStaticDepositRpcResponse < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::SparkClaimStaticDepositRpcResponse::Method]
      required :method_, enum: -> { Privy::SparkClaimStaticDepositRpcResponse::Method }, api_name: :method

      # @!attribute data
      #   Data returned by the Spark `claimStaticDeposit` RPC.
      #
      #   @return [Privy::Models::SparkClaimStaticDepositRpcResponseData, nil]
      optional :data, -> { Privy::SparkClaimStaticDepositRpcResponseData }

      # @!method initialize(method_:, data: nil)
      #   Response to the Spark `claimStaticDeposit` RPC.
      #
      #   @param method_ [Symbol, Privy::Models::SparkClaimStaticDepositRpcResponse::Method]
      #
      #   @param data [Privy::Models::SparkClaimStaticDepositRpcResponseData] Data returned by the Spark `claimStaticDeposit` RPC.

      # @see Privy::Models::SparkClaimStaticDepositRpcResponse#method_
      module Method
        extend Privy::Internal::Type::Enum

        CLAIM_STATIC_DEPOSIT = :claimStaticDeposit

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
