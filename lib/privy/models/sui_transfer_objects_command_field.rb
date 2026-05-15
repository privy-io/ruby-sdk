# frozen_string_literal: true

module Privy
  module Models
    # Supported fields for SUI TransferObjects command conditions. Only 'recipient'
    # and 'amount' are supported.
    module SuiTransferObjectsCommandField
      extend Privy::Internal::Type::Enum

      RECIPIENT = :recipient
      AMOUNT = :amount

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
