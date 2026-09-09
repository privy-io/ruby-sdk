# typed: strong

module Privy
  module Models
    class AutomationAssetSpec < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::AutomationAssetSpec, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :asset_address

      sig { returns(String) }
      attr_accessor :caip2

      # An asset identified by contract address on a specific chain (CAIP-2). Either
      # field may be "_": asset_address: "_" matches any asset on the chain; caip2: "\*"
      # matches the asset on any chain (in this case asset_address holds the asset
      # symbol id, e.g. "usdc" or "eth", not a contract address).
      sig do
        params(asset_address: String, caip2: String).returns(T.attached_class)
      end
      def self.new(asset_address:, caip2:)
      end

      sig { override.returns({ asset_address: String, caip2: String }) }
      def to_hash
      end
    end
  end
end
