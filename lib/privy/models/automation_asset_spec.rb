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
      #   An asset identified by contract address, scoped to a chain via CAIP-2.
      #
      #   @param asset_address [String]
      #   @param caip2 [String]
    end
  end
end
