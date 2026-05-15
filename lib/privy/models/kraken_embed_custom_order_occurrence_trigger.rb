# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedCustomOrderOccurrenceTrigger < Privy::Internal::Type::BaseModel
      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::KrakenEmbedCustomOrderOccurrenceTrigger::Type]
      required :type, enum: -> { Privy::KrakenEmbedCustomOrderOccurrenceTrigger::Type }

      # @!method initialize(type:)
      #   Trigger metadata for a custom order occurrence.
      #
      #   @param type [Symbol, Privy::Models::KrakenEmbedCustomOrderOccurrenceTrigger::Type]

      # @see Privy::Models::KrakenEmbedCustomOrderOccurrenceTrigger#type
      module Type
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
end
