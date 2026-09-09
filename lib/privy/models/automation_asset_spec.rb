# frozen_string_literal: true

module Privy
  module Models
    class AutomationAssetSpec < Privy::Internal::Type::BaseModel
      # @!attribute asset_address
      #
      #   @return [String]
      required :asset_address, String

      # @!attribute caip2
      #
      #   @return [String]
      required :caip2, String

      # @!method initialize(asset_address:, caip2:)
      #   An asset identified by contract address on a specific chain (CAIP-2). Either
      #   field may be "_": asset_address: "_" matches any asset on the chain; caip2: "\*"
      #   matches the asset on any chain (in this case asset_address holds the asset
      #   symbol id, e.g. "usdc" or "eth", not a contract address).
      #
      #   @param asset_address [String]
      #   @param caip2 [String]
    end
  end
end
