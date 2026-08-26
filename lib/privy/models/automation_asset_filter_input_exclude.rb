# frozen_string_literal: true

module Privy
  module Models
    class AutomationAssetFilterInputExclude < Privy::Internal::Type::BaseModel
      # @!attribute mode
      #
      #   @return [Symbol, Privy::Models::AutomationAssetFilterInputExclude::Mode]
      required :mode, enum: -> { Privy::AutomationAssetFilterInputExclude::Mode }

      # @!attribute values
      #
      #   @return [Array<Privy::Models::AutomationAssetSpecInput>]
      required :values, -> { Privy::Internal::Type::ArrayOf[Privy::AutomationAssetSpecInput] }

      # @!method initialize(mode:, values:)
      #   Match all assets except the specified ones (input form with alias support).
      #
      #   @param mode [Symbol, Privy::Models::AutomationAssetFilterInputExclude::Mode]
      #   @param values [Array<Privy::Models::AutomationAssetSpecInput>]

      # @see Privy::Models::AutomationAssetFilterInputExclude#mode
      module Mode
        extend Privy::Internal::Type::Enum

        EXCLUDE = :exclude

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
