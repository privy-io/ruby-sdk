# frozen_string_literal: true

module Privy
  module Models
    class SparkSignMessageWithIdentityKeyRpcInputParams < Privy::Internal::Type::BaseModel
      # @!attribute message
      #
      #   @return [String]
      required :message, String

      # @!attribute compact
      #
      #   @return [Boolean, nil]
      optional :compact, Privy::Internal::Type::Boolean

      # @!method initialize(message:, compact: nil)
      #   Parameters for the Spark `signMessageWithIdentityKey` RPC.
      #
      #   @param message [String]
      #   @param compact [Boolean]
    end
  end
end
