# frozen_string_literal: true

module Privy
  module Models
    # Outcome of a screen performed under KYC/KYB reliance.
    module KyxScreenResult
      extend Privy::Internal::Type::Enum

      PASSED = :passed
      FAILED = :failed

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
