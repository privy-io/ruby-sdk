# frozen_string_literal: true

module Privy
  module Models
    # Fiat currencies a deposit account can receive deposits in.
    module FiatDepositCurrency
      extend Privy::Internal::Type::Enum

      USD = :usd
      EUR = :eur
      GBP = :gbp
      BRL = :brl
      MXN = :mxn
      COP = :cop

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
