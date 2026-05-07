# typed: strong

module Privy
  module Models
    class BridgeFiatVirtualAccountSource < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::BridgeFiatVirtualAccountSource, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::BridgeSourceAsset::OrSymbol) }
      attr_accessor :asset

      sig do
        params(asset: Privy::BridgeSourceAsset::OrSymbol).returns(
          T.attached_class
        )
      end
      def self.new(asset:)
      end

      sig { override.returns({ asset: Privy::BridgeSourceAsset::OrSymbol }) }
      def to_hash
      end
    end
  end
end
