# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedGetQuoteQueryParams < Privy::Internal::Type::BaseModel
      # @!attribute user_id
      #   The ID of the Privy user.
      #
      #   @return [String]
      required :user_id, String

      # @!method initialize(user_id:)
      #   Query parameters for getting a quote status.
      #
      #   @param user_id [String] The ID of the Privy user.
    end
  end
end
