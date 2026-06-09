# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedCancelCustomOrderResponse < Privy::Internal::Type::BaseModel
      # @!attribute result
      #   Result payload for cancel custom order response.
      #
      #   @return [Privy::Models::KrakenEmbedCancelCustomOrderResult, nil]
      required :result, -> { Privy::KrakenEmbedCancelCustomOrderResult }, nil?: true

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
      #   @param result [Privy::Models::KrakenEmbedCancelCustomOrderResult, nil] Result payload for cancel custom order response.
      #
      #   @param error [Array<Object>]
      #
      #   @param errors [Array<Object>]
    end
  end
end
