# frozen_string_literal: true

module Privy
  module Models
    class AutomationAssetFilterInclude < Privy::Internal::Type::BaseModel
      # @!attribute mode
      #
      #   @return [Symbol, Privy::Models::AutomationAssetFilterInclude::Mode]
      required :mode, enum: -> { Privy::AutomationAssetFilterInclude::Mode }

      # @!attribute values
      #
      #   @return [Array<Privy::Models::AutomationAssetSpec>]
      required :values, -> { Privy::Internal::Type::ArrayOf[Privy::AutomationAssetSpec] }

      # @!method initialize(mode:, values:)
      #   Match only the specified assets.
      #
      #   @param mode [Symbol, Privy::Models::AutomationAssetFilterInclude::Mode]
      #   @param values [Array<Privy::Models::AutomationAssetSpec>]

      # @see Privy::Models::AutomationAssetFilterInclude#mode
      module Mode
        extend Privy::Internal::Type::Enum

        INCLUDE = :include

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
