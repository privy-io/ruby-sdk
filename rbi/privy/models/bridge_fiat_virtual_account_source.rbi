# typed: strong

module Privy
  module Models
    class BridgeFiatVirtualAccountSource < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::BridgeFiatVirtualAccountSource, Privy::Internal::AnyHash)
        end

      # Supported source fiat currencies for virtual account deposits.
      sig { returns(Privy::BridgeSourceAsset::OrSymbol) }
      attr_accessor :asset

      # The source fiat currency configuration for a virtual account.
      sig do
        params(asset: Privy::BridgeSourceAsset::OrSymbol).returns(
          T.attached_class
        )
      end
      def self.new(
        # Supported source fiat currencies for virtual account deposits.
        asset:
      )
      end

      sig { override.returns({ asset: Privy::BridgeSourceAsset::OrSymbol }) }
      def to_hash
      end
    end
  end
end
