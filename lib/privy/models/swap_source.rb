# frozen_string_literal: true

module Privy
  module Models
    class SwapSource < Privy::Internal::Type::BaseModel
      # @!attribute asset_address
      #   Token contract address to sell, or "native" for the chain's native token.
      #
      #   @return [String]
      required :asset_address, String

      # @!attribute caip2
      #   CAIP-2 chain identifier (e.g., "eip155:1").
      #
      #   @return [String]
      required :caip2, String

      # @!method initialize(asset_address:, caip2:)
      #   The input side of a swap request, including token and chain.
      #
      #   @param asset_address [String] Token contract address to sell, or "native" for the chain's native token.
      #
      #   @param caip2 [String] CAIP-2 chain identifier (e.g., "eip155:1").
    end
  end
end
