# frozen_string_literal: true

module Privy
  module Models
    class AutomationAssetFilterExclude < Privy::Internal::Type::BaseModel
      # @!attribute mode
      #
      #   @return [Symbol, Privy::Models::AutomationAssetFilterExclude::Mode]
      required :mode, enum: -> { Privy::AutomationAssetFilterExclude::Mode }

      # @!attribute values
      #
      #   @return [Array<Privy::Models::AutomationAssetSpec>]
      required :values, -> { Privy::Internal::Type::ArrayOf[Privy::AutomationAssetSpec] }

      # @!method initialize(mode:, values:)
      #   Match all assets except the specified ones.
      #
      #   @param mode [Symbol, Privy::Models::AutomationAssetFilterExclude::Mode]
      #   @param values [Array<Privy::Models::AutomationAssetSpec>]

      # @see Privy::Models::AutomationAssetFilterExclude#mode
      module Mode
        extend Privy::Internal::Type::Enum

        EXCLUDE = :exclude

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
