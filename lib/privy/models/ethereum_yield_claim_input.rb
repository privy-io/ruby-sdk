# frozen_string_literal: true

module Privy
  module Models
    class EthereumYieldClaimInput < Privy::Internal::Type::BaseModel
      # @!attribute caip2
      #   An EVM CAIP-2 chain identifier (e.g., "eip155:8453" for Base).
      #
      #   @return [String]
      required :caip2, String

      # @!method initialize(caip2:)
      #   Input for claiming incentive rewards from vault participation.
      #
      #   @param caip2 [String] An EVM CAIP-2 chain identifier (e.g., "eip155:8453" for Base).
    end
  end
end
