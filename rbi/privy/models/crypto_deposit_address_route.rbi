# typed: strong

module Privy
  module Models
    class CryptoDepositAddressRoute < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::CryptoDepositAddressRoute, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :deposit_address

      # Destination asset identified by contract address on a specific chain (CAIP-2).
      sig { returns(Privy::AutomationDestinationAsset) }
      attr_reader :destination

      sig do
        params(destination: Privy::AutomationDestinationAsset::OrHash).void
      end
      attr_writer :destination

      # Which assets to include/exclude for an automation trigger.
      sig { returns(Privy::AutomationAssetFilter::Variants) }
      attr_accessor :source

      sig { returns(String) }
      attr_accessor :wallet_id

      # One deposit address and the source/destination route it accepts.
      sig do
        params(
          deposit_address: String,
          destination: Privy::AutomationDestinationAsset::OrHash,
          source:
            T.any(
              Privy::AutomationAssetFilterAll::OrHash,
              Privy::AutomationAssetFilterInclude::OrHash,
              Privy::AutomationAssetFilterExclude::OrHash
            ),
          wallet_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        deposit_address:,
        # Destination asset identified by contract address on a specific chain (CAIP-2).
        destination:,
        # Which assets to include/exclude for an automation trigger.
        source:,
        wallet_id:
      )
      end

      sig do
        override.returns(
          {
            deposit_address: String,
            destination: Privy::AutomationDestinationAsset,
            source: Privy::AutomationAssetFilter::Variants,
            wallet_id: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
