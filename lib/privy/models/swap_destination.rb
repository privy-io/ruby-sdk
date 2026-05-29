# frozen_string_literal: true

module Privy
  module Models
    class SwapDestination < Privy::Internal::Type::BaseModel
      # @!attribute asset_address
      #   Token contract address to buy, or "native" for the chain's native token.
      #
      #   @return [String]
      required :asset_address, String

      # @!attribute caip2
      #   CAIP-2 chain identifier for the destination. Defaults to source chain if
      #   omitted. Specify a different chain for cross-chain swaps.
      #
      #   @return [String, nil]
      optional :caip2, String

      # @!attribute destination_address
      #   Address to receive the output tokens. Defaults to the swapping wallet address.
      #   Required when swapping between different chain types (e.g. EVM to Solana).
      #
      #   @return [String, nil]
      optional :destination_address, String

      # @!method initialize(asset_address:, caip2: nil, destination_address: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::SwapDestination} for more details.
      #
      #   The output side of a swap execution request.
      #
      #   @param asset_address [String] Token contract address to buy, or "native" for the chain's native token.
      #
      #   @param caip2 [String] CAIP-2 chain identifier for the destination. Defaults to source chain if omitted
      #
      #   @param destination_address [String] Address to receive the output tokens. Defaults to the swapping wallet address. R
    end
  end
end
