# frozen_string_literal: true

module Privy
  module Models
    class SwapQuoteDestination < Privy::Internal::Type::BaseModel
      # @!attribute asset_address
      #   Token contract address to buy, or "native" for the chain's native token.
      #
      #   @return [String]
      required :asset_address, String

      # @!attribute caip2
      #   CAIP-2 chain identifier for the destination. Must match source chain —
      #   cross-chain swaps are not yet supported. Defaults to source chain if omitted.
      #
      #   @return [String, nil]
      optional :caip2, String

      # @!method initialize(asset_address:, caip2: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::SwapQuoteDestination} for more details.
      #
      #   The output side of a swap quote request.
      #
      #   @param asset_address [String] Token contract address to buy, or "native" for the chain's native token.
      #
      #   @param caip2 [String] CAIP-2 chain identifier for the destination. Must match source chain — cross-cha
    end
  end
end
