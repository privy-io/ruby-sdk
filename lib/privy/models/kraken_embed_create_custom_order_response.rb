# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedCreateCustomOrderResponse < Privy::Internal::Type::BaseModel
      # @!attribute result
      #   Result payload for create custom order response.
      #
      #   @return [Privy::Models::KrakenEmbedCreateCustomOrderResponse::Result]
      required :result, -> { Privy::KrakenEmbedCreateCustomOrderResponse::Result }

      # @!attribute error
      #
      #   @return [Array<Object>, nil]
      optional :error, Privy::Internal::Type::ArrayOf[Privy::Internal::Type::Unknown]

      # @!attribute errors
      #
      #   @return [Array<Object>, nil]
      optional :errors, Privy::Internal::Type::ArrayOf[Privy::Internal::Type::Unknown]

      # @!method initialize(result:, error: nil, errors: nil)
      #   Response body for creating a custom order.
      #
      #   @param result [Privy::Models::KrakenEmbedCreateCustomOrderResponse::Result] Result payload for create custom order response.
      #
      #   @param error [Array<Object>]
      #
      #   @param errors [Array<Object>]

      # @see Privy::Models::KrakenEmbedCreateCustomOrderResponse#result
      class Result < Privy::Models::KrakenEmbedCreateCustomOrderResult
        # @!method initialize
        #   Result payload for create custom order response.
      end
    end
  end
end
