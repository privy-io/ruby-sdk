# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedCustomOrderOccurrenceExecutedAction < Privy::Internal::Type::BaseModel
      # @!attribute quote_id
      #
      #   @return [String]
      required :quote_id, String

      # @!method initialize(quote_id:)
      #   Executed action details for a custom order occurrence.
      #
      #   @param quote_id [String]
    end
  end
end
