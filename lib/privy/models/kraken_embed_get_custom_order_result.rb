# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedGetCustomOrderResult < Privy::Internal::Type::BaseModel
      # @!attribute order
      #   Full custom order object.
      #
      #   @return [Privy::Models::KrakenEmbedCustomOrder]
      required :order, -> { Privy::KrakenEmbedCustomOrder }

      # @!method initialize(order:)
      #   Result payload for get custom order response.
      #
      #   @param order [Privy::Models::KrakenEmbedCustomOrder] Full custom order object.
    end
  end
end
