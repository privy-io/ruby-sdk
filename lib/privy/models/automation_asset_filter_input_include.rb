# frozen_string_literal: true

module Privy
  module Models
    class AutomationAssetFilterInputInclude < Privy::Internal::Type::BaseModel
      # @!attribute mode
      #
      #   @return [Symbol, Privy::Models::AutomationAssetFilterInputInclude::Mode]
      required :mode, enum: -> { Privy::AutomationAssetFilterInputInclude::Mode }

      # @!attribute values
      #
      #   @return [Array<Privy::Models::AutomationAssetSpecInput>]
      required :values, -> { Privy::Internal::Type::ArrayOf[Privy::AutomationAssetSpecInput] }

      # @!method initialize(mode:, values:)
      #   Match only the specified assets (input form with alias support).
      #
      #   @param mode [Symbol, Privy::Models::AutomationAssetFilterInputInclude::Mode]
      #   @param values [Array<Privy::Models::AutomationAssetSpecInput>]

      # @see Privy::Models::AutomationAssetFilterInputInclude#mode
      module Mode
        extend Privy::Internal::Type::Enum

        INCLUDE = :include

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
