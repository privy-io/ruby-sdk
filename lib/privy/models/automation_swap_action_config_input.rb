# frozen_string_literal: true

module Privy
  module Models
    class AutomationSwapActionConfigInput < Privy::Internal::Type::BaseModel
      # @!attribute destination_chain_asset
      #   A destination asset spec accepting either raw identifiers (asset_address, caip2)
      #   or human-readable aliases (asset, chain). Exactly one of asset_address or asset
      #   must be provided; exactly one of caip2 or chain must be provided.
      #
      #   @return [Privy::Models::AutomationDestinationAssetInput]
      required :destination_chain_asset, -> { Privy::AutomationDestinationAssetInput }

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::AutomationSwapActionConfigInput::Type]
      required :type, enum: -> { Privy::AutomationSwapActionConfigInput::Type }

      # @!method initialize(destination_chain_asset:, type:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::AutomationSwapActionConfigInput} for more details.
      #
      #   Action configuration for swap operations (input form with alias support).
      #
      #   @param destination_chain_asset [Privy::Models::AutomationDestinationAssetInput] A destination asset spec accepting either raw identifiers (asset_address, caip2)
      #
      #   @param type [Symbol, Privy::Models::AutomationSwapActionConfigInput::Type]

      # @see Privy::Models::AutomationSwapActionConfigInput#type
      module Type
        extend Privy::Internal::Type::Enum

        SWAP = :swap

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
