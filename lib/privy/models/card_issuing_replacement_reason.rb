# frozen_string_literal: true

module Privy
  module Models
    # Why a card is being replaced.
    module CardIssuingReplacementReason
      extend Privy::Internal::Type::Enum

      LOST = :lost
      STOLEN = :stolen
      EXPIRED = :expired

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
