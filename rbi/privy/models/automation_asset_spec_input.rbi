# typed: strong

module Privy
  module Models
    class AutomationAssetSpecInput < Privy::Models::AutomationAssetSpec
      OrHash =
        T.type_alias do
          T.any(Privy::AutomationAssetSpecInput, Privy::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_reader :asset

      sig { params(asset: String).void }
      attr_writer :asset

      sig { returns(T.nilable(String)) }
      attr_reader :chain

      sig { params(chain: String).void }
      attr_writer :chain

      # An asset spec accepting either raw identifiers (asset_address, caip2) or
      # human-readable aliases (asset, chain). Exactly one of asset_address or asset
      # must be provided; at most one of caip2 or chain may be provided.
      sig { params(asset: String, chain: String).returns(T.attached_class) }
      def self.new(asset: nil, chain: nil)
      end

      sig { override.returns({ asset: String, chain: String }) }
      def to_hash
      end
    end
  end
end
