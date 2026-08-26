# frozen_string_literal: true

module Privy
  module Models
    class AutomationActionConfig < Privy::Internal::Type::BaseModel
      # @!attribute destination_chain_asset
      #   Destination asset identified by contract address on a specific chain (CAIP-2).
      #
      #   @return [Privy::Models::AutomationDestinationAsset]
      required :destination_chain_asset, -> { Privy::AutomationDestinationAsset }

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::AutomationActionConfig::Type]
      required :type, enum: -> { Privy::AutomationActionConfig::Type }

      # @!method initialize(destination_chain_asset:, type:)
      #   Action configuration for swap operations.
      #
      #   @param destination_chain_asset [Privy::Models::AutomationDestinationAsset] Destination asset identified by contract address on a specific chain (CAIP-2).
      #
      #   @param type [Symbol, Privy::Models::AutomationActionConfig::Type]

      # @see Privy::Models::AutomationActionConfig#type
      module Type
        extend Privy::Internal::Type::Enum

        SWAP = :swap

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
