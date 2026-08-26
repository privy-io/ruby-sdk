# frozen_string_literal: true

module Privy
  module Models
    class CryptoDepositAddressRoute < Privy::Internal::Type::BaseModel
      # @!attribute deposit_address
      #
      #   @return [String]
      required :deposit_address, String

      # @!attribute destination
      #   Destination asset identified by contract address on a specific chain (CAIP-2).
      #
      #   @return [Privy::Models::AutomationDestinationAsset]
      required :destination, -> { Privy::AutomationDestinationAsset }

      # @!attribute source
      #   Which assets to include/exclude for an automation trigger.
      #
      #   @return [Privy::Models::AutomationAssetFilterAll, Privy::Models::AutomationAssetFilterInclude, Privy::Models::AutomationAssetFilterExclude]
      required :source, union: -> { Privy::AutomationAssetFilter }

      # @!attribute wallet_id
      #
      #   @return [String]
      required :wallet_id, String

      # @!method initialize(deposit_address:, destination:, source:, wallet_id:)
      #   One deposit address and the source/destination route it accepts.
      #
      #   @param deposit_address [String]
      #
      #   @param destination [Privy::Models::AutomationDestinationAsset] Destination asset identified by contract address on a specific chain (CAIP-2).
      #
      #   @param source [Privy::Models::AutomationAssetFilterAll, Privy::Models::AutomationAssetFilterInclude, Privy::Models::AutomationAssetFilterExclude] Which assets to include/exclude for an automation trigger.
      #
      #   @param wallet_id [String]
    end
  end
end
