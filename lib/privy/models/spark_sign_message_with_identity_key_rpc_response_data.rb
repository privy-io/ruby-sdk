# frozen_string_literal: true

module Privy
  module Models
    class SparkSignMessageWithIdentityKeyRpcResponseData < Privy::Internal::Type::BaseModel
      # @!attribute signature
      #
      #   @return [String]
      required :signature, String

      # @!method initialize(signature:)
      #   Data returned by the Spark `signMessageWithIdentityKey` RPC.
      #
      #   @param signature [String]
    end
  end
end
