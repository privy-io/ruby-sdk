# frozen_string_literal: true

module Privy
  module Models
    class AutomationDestinationAssetInput < Privy::Models::AutomationDestinationAsset
      # @!attribute asset
      #
      #   @return [String, nil]
      optional :asset, String

      # @!attribute chain
      #
      #   @return [String, nil]
      optional :chain, String

      # @!method initialize(asset: nil, chain: nil)
      #   A destination asset spec accepting either raw identifiers (asset_address, caip2)
      #   or human-readable aliases (asset, chain). Exactly one of asset_address or asset
      #   must be provided; exactly one of caip2 or chain must be provided.
      #
      #   @param asset [String]
      #   @param chain [String]
    end
  end
end
