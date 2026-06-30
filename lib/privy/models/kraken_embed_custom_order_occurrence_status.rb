# frozen_string_literal: true

module Privy
  module Models
    # Outcome status of a custom order execution occurrence.
    module KrakenEmbedCustomOrderOccurrenceStatus
      extend Privy::Internal::Type::Enum

      SUCCESS = :success
      FAILURE = :failure
      SKIPPED = :skipped

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
