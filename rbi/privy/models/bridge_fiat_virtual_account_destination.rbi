# typed: strong

module Privy
  module Models
    class BridgeFiatVirtualAccountDestination < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::BridgeFiatVirtualAccountDestination,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :address

      # Supported destination stablecoin assets for fiat-to-crypto transfers.
      sig { returns(Privy::BridgeDestinationAsset::OrSymbol) }
      attr_accessor :asset

      sig { returns(String) }
      attr_accessor :chain

      # The destination chain, asset, and address for a virtual account transfer.
      sig do
        params(
          address: String,
          asset: Privy::BridgeDestinationAsset::OrSymbol,
          chain: String
        ).returns(T.attached_class)
      end
      def self.new(
        address:,
        # Supported destination stablecoin assets for fiat-to-crypto transfers.
        asset:,
        chain:
      )
      end

      sig do
        override.returns(
          {
            address: String,
            asset: Privy::BridgeDestinationAsset::OrSymbol,
            chain: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
