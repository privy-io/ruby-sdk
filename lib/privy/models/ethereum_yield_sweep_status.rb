# frozen_string_literal: true

module Privy
  module Models
    # Status of a yield sweep.
    module EthereumYieldSweepStatus
      extend Privy::Internal::Type::Enum

      PENDING = :pending
      CONFIRMED = :confirmed
      FAILED = :failed

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
