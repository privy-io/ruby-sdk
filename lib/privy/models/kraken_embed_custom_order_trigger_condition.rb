# frozen_string_literal: true

module Privy
  module Models
    # Comparison operator for a custom order price trigger.
    module KrakenEmbedCustomOrderTriggerCondition
      extend Privy::Internal::Type::Enum

      GTE = :gte
      LTE = :lte

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
