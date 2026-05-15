# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedCancelCustomOrderResponse < Privy::Internal::Type::BaseModel
      # @!attribute result
      #   Result payload for cancel custom order response.
      #
      #   @return [Privy::Models::KrakenEmbedCancelCustomOrderResponse::Result]
      required :result, -> { Privy::KrakenEmbedCancelCustomOrderResponse::Result }

      # @!attribute error
      #
      #   @return [Array<Object>, nil]
      optional :error, Privy::Internal::Type::ArrayOf[Privy::Internal::Type::Unknown]

      # @!attribute errors
      #
      #   @return [Array<Object>, nil]
      optional :errors, Privy::Internal::Type::ArrayOf[Privy::Internal::Type::Unknown]

      # @!method initialize(result:, error: nil, errors: nil)
      #   Response body for cancelling a custom order.
      #
      #   @param result [Privy::Models::KrakenEmbedCancelCustomOrderResponse::Result] Result payload for cancel custom order response.
      #
      #   @param error [Array<Object>]
      #
      #   @param errors [Array<Object>]

      # @see Privy::Models::KrakenEmbedCancelCustomOrderResponse#result
      class Result < Privy::Models::KrakenEmbedCancelCustomOrderResult
        # @!method initialize
        #   Result payload for cancel custom order response.
      end
    end
  end
end
