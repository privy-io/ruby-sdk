# frozen_string_literal: true

module Privy
  module Models
    class AutomationAssetSpecInput < Privy::Models::AutomationAssetSpec
      # @!attribute asset
      #
      #   @return [String, nil]
      optional :asset, String

      # @!attribute chain
      #
      #   @return [String, nil]
      optional :chain, String

      # @!method initialize(asset: nil, chain: nil)
      #   An asset spec accepting either raw identifiers (asset_address, caip2) or
      #   human-readable aliases (asset, chain). Exactly one of asset_address or asset
      #   must be provided; at most one of caip2 or chain may be provided. Use "_" for
      #   asset_address or asset to match any asset on a given chain (chain is then
      #   required). Omitting chain/caip2 (or passing "_" for either) matches the
      #   specified asset on any chain.
      #
      #   @param asset [String]
      #   @param chain [String]
    end
  end
end
