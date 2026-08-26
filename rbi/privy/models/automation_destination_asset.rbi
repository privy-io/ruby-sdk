# typed: strong

module Privy
  module Models
    class AutomationDestinationAsset < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::AutomationDestinationAsset, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :asset_address

      sig { returns(String) }
      attr_accessor :caip2

      # Destination asset identified by contract address on a specific chain (CAIP-2).
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
