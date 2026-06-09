# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedGetCustomOrderResponse < Privy::Internal::Type::BaseModel
      # @!attribute result
      #   Result payload for get custom order response.
      #
      #   @return [Privy::Models::KrakenEmbedGetCustomOrderResult, nil]
      required :result, -> { Privy::KrakenEmbedGetCustomOrderResult }, nil?: true

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
      #   @param result [Privy::Models::KrakenEmbedGetCustomOrderResult, nil] Result payload for get custom order response.
      #
      #   @param error [Array<Object>]
      #
      #   @param errors [Array<Object>]
    end
  end
end
