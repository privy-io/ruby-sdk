# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedGetCustomOrderHistoryQueryParams < Privy::Internal::Type::BaseModel
      # @!attribute order_id
      #
      #   @return [String]
      required :order_id, String

      # @!attribute user_id
      #
      #   @return [String]
      required :user_id, String

      # @!method initialize(order_id:, user_id:)
      #   Query parameters for getting custom order history.
      #
      #   @param order_id [String]
      #   @param user_id [String]
    end
  end
end
