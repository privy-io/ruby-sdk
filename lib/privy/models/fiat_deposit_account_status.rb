# frozen_string_literal: true

module Privy
  module Models
    # Activation status of a fiat deposit account.
    module FiatDepositAccountStatus
      extend Privy::Internal::Type::Enum

      ACTIVATED = :activated
      DEACTIVATED = :deactivated

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
