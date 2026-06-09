# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedCreateCustomOrderResponse < Privy::Internal::Type::BaseModel
      # @!attribute result
      #   Result payload for create custom order response.
      #
      #   @return [Privy::Models::KrakenEmbedCreateCustomOrderResult, nil]
      required :result, -> { Privy::KrakenEmbedCreateCustomOrderResult }, nil?: true

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
      #   @param result [Privy::Models::KrakenEmbedCreateCustomOrderResult, nil] Result payload for create custom order response.
      #
      #   @param error [Array<Object>]
      #
      #   @param errors [Array<Object>]
    end
  end
end
