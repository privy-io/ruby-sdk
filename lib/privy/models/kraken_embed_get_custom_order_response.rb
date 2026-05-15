# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedGetCustomOrderResponse < Privy::Internal::Type::BaseModel
      # @!attribute result
      #   Result payload for get custom order response.
      #
      #   @return [Privy::Models::KrakenEmbedGetCustomOrderResponse::Result]
      required :result, -> { Privy::KrakenEmbedGetCustomOrderResponse::Result }

      # @!attribute error
      #
      #   @return [Array<Object>, nil]
      optional :error, Privy::Internal::Type::ArrayOf[Privy::Internal::Type::Unknown]

      # @!attribute errors
      #
      #   @return [Array<Object>, nil]
      optional :errors, Privy::Internal::Type::ArrayOf[Privy::Internal::Type::Unknown]

      # @!method initialize(result:, error: nil, errors: nil)
      #   Response body for getting a single custom order.
      #
      #   @param result [Privy::Models::KrakenEmbedGetCustomOrderResponse::Result] Result payload for get custom order response.
      #
      #   @param error [Array<Object>]
      #
      #   @param errors [Array<Object>]

      # @see Privy::Models::KrakenEmbedGetCustomOrderResponse#result
      class Result < Privy::Models::KrakenEmbedGetCustomOrderResult
        # @!method initialize
        #   Result payload for get custom order response.
      end
    end
  end
end
