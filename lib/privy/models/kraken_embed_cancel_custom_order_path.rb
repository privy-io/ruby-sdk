# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedCancelCustomOrderPath < Privy::Internal::Type::BaseModel
      # @!attribute order_id
      #
      #   @return [String]
      required :order_id, String

      # @!method initialize(order_id:)
      #   Path parameters for cancelling a custom order.
      #
      #   @param order_id [String]
    end
  end
end
