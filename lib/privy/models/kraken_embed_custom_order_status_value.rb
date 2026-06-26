# frozen_string_literal: true

module Privy
  module Models
    # The lifecycle state of a custom order.
    module KrakenEmbedCustomOrderStatusValue
      extend Privy::Internal::Type::Enum

      ACTIVE = :active
      COMPLETED = :completed
      CANCELLED = :cancelled
      PAUSED = :paused

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
