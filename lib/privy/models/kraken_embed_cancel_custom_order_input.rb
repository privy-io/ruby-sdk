# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedCancelCustomOrderInput < Privy::Internal::Type::BaseModel
      # @!attribute user_id
      #
      #   @return [String]
      required :user_id, String

      # @!method initialize(user_id:)
      #   Request body for cancelling a custom order.
      #
      #   @param user_id [String]
    end
  end
end
