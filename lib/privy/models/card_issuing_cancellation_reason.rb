# frozen_string_literal: true

module Privy
  module Models
    # Why a lost or stolen card is being canceled.
    module CardIssuingCancellationReason
      extend Privy::Internal::Type::Enum

      LOST = :lost
      STOLEN = :stolen

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
