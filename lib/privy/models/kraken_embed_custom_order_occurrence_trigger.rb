# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedCustomOrderOccurrenceTrigger < Privy::Internal::Type::BaseModel
      # @!attribute type
      #   The trigger type that caused a custom order occurrence to execute.
      #
      #   @return [Symbol, Privy::Models::KrakenEmbedCustomOrderOccurrenceTriggerType]
      required :type, enum: -> { Privy::KrakenEmbedCustomOrderOccurrenceTriggerType }

      # @!method initialize(type:)
      #   Trigger metadata for a custom order occurrence.
      #
      #   @param type [Symbol, Privy::Models::KrakenEmbedCustomOrderOccurrenceTriggerType] The trigger type that caused a custom order occurrence to execute.
    end
  end
end
