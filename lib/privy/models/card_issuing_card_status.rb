# frozen_string_literal: true

module Privy
  module Models
    # Lifecycle status of a card. Active unfreezes the card, inactive freezes it, and
    # canceled closes it.
    module CardIssuingCardStatus
      extend Privy::Internal::Type::Enum

      ACTIVE = :active
      INACTIVE = :inactive
      CANCELED = :canceled

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
