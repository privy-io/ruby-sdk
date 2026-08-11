# frozen_string_literal: true

module Privy
  module Models
    # Status of a dispute for card activity.
    module CardIssuingDisputeStatus
      extend Privy::Internal::Type::Enum

      EXPIRED = :expired
      LOST = :lost
      SUBMITTED = :submitted
      UNSUBMITTED = :unsubmitted
      WON = :won

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
