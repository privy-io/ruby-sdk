# frozen_string_literal: true

module Privy
  module Models
    # Currency for gas spend values.
    module GasSpendCurrency
      extend Privy::Internal::Type::Enum

      USD = :usd

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
