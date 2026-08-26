# frozen_string_literal: true

module Privy
  module Models
    class AutomationSwapActionConfig < Privy::Internal::Type::BaseModel
      # @!attribute destination_chain_asset
      #   Destination asset identified by contract address on a specific chain (CAIP-2).
      #
      #   @return [Privy::Models::AutomationDestinationAsset]
      required :destination_chain_asset, -> { Privy::AutomationDestinationAsset }

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::AutomationSwapActionConfig::Type]
      required :type, enum: -> { Privy::AutomationSwapActionConfig::Type }

      # @!method initialize(destination_chain_asset:, type:)
      #   Action configuration for swap operations.
      #
      #   @param destination_chain_asset [Privy::Models::AutomationDestinationAsset] Destination asset identified by contract address on a specific chain (CAIP-2).
      #
      #   @param type [Symbol, Privy::Models::AutomationSwapActionConfig::Type]

      # @see Privy::Models::AutomationSwapActionConfig#type
      module Type
        extend Privy::Internal::Type::Enum

        SWAP = :swap

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
