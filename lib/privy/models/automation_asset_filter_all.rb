# frozen_string_literal: true

module Privy
  module Models
    class AutomationAssetFilterAll < Privy::Internal::Type::BaseModel
      # @!attribute mode
      #
      #   @return [Symbol, Privy::Models::AutomationAssetFilterAll::Mode]
      required :mode, enum: -> { Privy::AutomationAssetFilterAll::Mode }

      # @!method initialize(mode:)
      #   Match all assets.
      #
      #   @param mode [Symbol, Privy::Models::AutomationAssetFilterAll::Mode]

      # @see Privy::Models::AutomationAssetFilterAll#mode
      module Mode
        extend Privy::Internal::Type::Enum

        ALL = :all

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
