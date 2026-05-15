# frozen_string_literal: true

module Privy
  module Models
    class SparkGetStaticDepositAddressRpcResponseData < Privy::Internal::Type::BaseModel
      # @!attribute address
      #
      #   @return [String]
      required :address, String

      # @!method initialize(address:)
      #   Data returned by the Spark `getStaticDepositAddress` RPC.
      #
      #   @param address [String]
    end
  end
end
