# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedListCustomOrdersResponse < Privy::Internal::Type::BaseModel
      # @!attribute result
      #   Result payload for list custom orders response.
      #
      #   @return [Privy::Models::KrakenEmbedListCustomOrdersResponse::Result]
      required :result, -> { Privy::KrakenEmbedListCustomOrdersResponse::Result }

      # @!attribute error
      #
      #   @return [Array<Object>, nil]
      optional :error, Privy::Internal::Type::ArrayOf[Privy::Internal::Type::Unknown]

      # @!attribute errors
      #
      #   @return [Array<Object>, nil]
      optional :errors, Privy::Internal::Type::ArrayOf[Privy::Internal::Type::Unknown]

      # @!method initialize(result:, error: nil, errors: nil)
      #   Response body for listing custom orders.
      #
      #   @param result [Privy::Models::KrakenEmbedListCustomOrdersResponse::Result] Result payload for list custom orders response.
      #
      #   @param error [Array<Object>]
      #
      #   @param errors [Array<Object>]

      # @see Privy::Models::KrakenEmbedListCustomOrdersResponse#result
      class Result < Privy::Models::KrakenEmbedListCustomOrdersResult
        # @!method initialize
        #   Result payload for list custom orders response.
      end
    end
  end
end
