# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedGetCustomOrderHistoryResult < Privy::Internal::Type::BaseModel
      # @!attribute history
      #
      #   @return [Array<Privy::Models::KrakenEmbedCustomOrderOccurrence>]
      required :history, -> { Privy::Internal::Type::ArrayOf[Privy::KrakenEmbedCustomOrderOccurrence] }

      # @!method initialize(history:)
      #   Result payload for custom order history response.
      #
      #   @param history [Array<Privy::Models::KrakenEmbedCustomOrderOccurrence>]
    end
  end
end
