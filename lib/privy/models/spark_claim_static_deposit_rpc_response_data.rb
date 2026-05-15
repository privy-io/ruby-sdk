# frozen_string_literal: true

module Privy
  module Models
    class SparkClaimStaticDepositRpcResponseData < Privy::Internal::Type::BaseModel
      # @!attribute transfer_id
      #
      #   @return [String]
      required :transfer_id, String

      # @!method initialize(transfer_id:)
      #   Data returned by the Spark `claimStaticDeposit` RPC.
      #
      #   @param transfer_id [String]
    end
  end
end
