# frozen_string_literal: true

module Privy
  module Models
    class SparkTransferTokensRpcResponseData < Privy::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!method initialize(id:)
      #   Data returned by the Spark `transferTokens` RPC.
      #
      #   @param id [String]
    end
  end
end
