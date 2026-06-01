# frozen_string_literal: true

module Privy
  module Models
    class BridgeFiatVirtualAccountDestination < Privy::Internal::Type::BaseModel
      # @!attribute address
      #
      #   @return [String]
      required :address, String

      # @!attribute asset
      #   Supported destination stablecoin assets for fiat-to-crypto transfers.
      #
      #   @return [Symbol, Privy::Models::BridgeDestinationAsset]
      required :asset, enum: -> { Privy::BridgeDestinationAsset }

      # @!attribute chain
      #
      #   @return [String]
      required :chain, String

      # @!method initialize(address:, asset:, chain:)
      #   The destination chain, asset, and address for a virtual account transfer.
      #
      #   @param address [String]
      #
      #   @param asset [Symbol, Privy::Models::BridgeDestinationAsset] Supported destination stablecoin assets for fiat-to-crypto transfers.
      #
      #   @param chain [String]
    end
  end
end
