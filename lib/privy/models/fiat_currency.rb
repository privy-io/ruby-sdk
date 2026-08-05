# frozen_string_literal: true

module Privy
  module Models
    # Supported fiat currencies.
    module FiatCurrency
      extend Privy::Internal::Type::Enum

      USD = :usd
      EUR = :eur

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
