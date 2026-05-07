# frozen_string_literal: true

module Privy
  module Models
    class BridgeFiatVirtualAccountDestination < Privy::Internal::Type::BaseModel
      # @!attribute address
      #
      #   @return [String]
      required :address, String

      # @!attribute asset
      #
      #   @return [Symbol, Privy::Models::BridgeDestinationAsset]
      required :asset, enum: -> { Privy::BridgeDestinationAsset }

      # @!attribute chain
      #
      #   @return [String]
      required :chain, String

      # @!method initialize(address:, asset:, chain:)
      #   @param address [String]
      #   @param asset [Symbol, Privy::Models::BridgeDestinationAsset]
      #   @param chain [String]
    end
  end
end
