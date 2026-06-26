# frozen_string_literal: true

module Privy
  module Models
    # The trigger type that caused a custom order occurrence to execute.
    module KrakenEmbedCustomOrderOccurrenceTriggerType
      extend Privy::Internal::Type::Enum

      TIME = :time
      PRICE = :price
      CRYPTO_DEPOSIT = :crypto_deposit
      MARKET_OPEN = :market_open

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
