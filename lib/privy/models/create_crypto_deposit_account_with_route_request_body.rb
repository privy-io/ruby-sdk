# frozen_string_literal: true

module Privy
  module Models
    class CreateCryptoDepositAccountWithRouteRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute destination
      #   A destination asset spec accepting either raw identifiers (asset_address, caip2)
      #   or human-readable aliases (asset, chain). Exactly one of asset_address or asset
      #   must be provided; exactly one of caip2 or chain must be provided.
      #
      #   @return [Privy::Models::AutomationDestinationAssetInput]
      required :destination, -> { Privy::AutomationDestinationAssetInput }

      # @!attribute source
      #   Which assets to include/exclude for an automation trigger (input form with alias
      #   support).
      #
      #   @return [Privy::Models::AutomationAssetFilterAll, Privy::Models::AutomationAssetFilterInputInclude, Privy::Models::AutomationAssetFilterInputExclude]
      required :source, union: -> { Privy::AutomationAssetFilterInput }

      # @!method initialize(destination:, source:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::CreateCryptoDepositAccountWithRouteRequestBody} for more
      #   details.
      #
      #   Creates a crypto deposit account from an inline source and destination.
      #
      #   @param destination [Privy::Models::AutomationDestinationAssetInput] A destination asset spec accepting either raw identifiers (asset_address, caip2)
      #
      #   @param source [Privy::Models::AutomationAssetFilterAll, Privy::Models::AutomationAssetFilterInputInclude, Privy::Models::AutomationAssetFilterInputExclude] Which assets to include/exclude for an automation trigger (input form with alias
    end
  end
end
