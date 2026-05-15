# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedListCustomOrdersResult < Privy::Internal::Type::BaseModel
      # @!attribute orders
      #
      #   @return [Array<Privy::Models::KrakenEmbedCustomOrder>]
      required :orders, -> { Privy::Internal::Type::ArrayOf[Privy::KrakenEmbedCustomOrder] }

      # @!method initialize(orders:)
      #   Result payload for list custom orders response.
      #
      #   @param orders [Array<Privy::Models::KrakenEmbedCustomOrder>]
    end
  end
end
