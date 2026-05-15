# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedGetCustomOrderHistoryResponse < Privy::Internal::Type::BaseModel
      # @!attribute result
      #   Result payload for custom order history response.
      #
      #   @return [Privy::Models::KrakenEmbedGetCustomOrderHistoryResponse::Result]
      required :result, -> { Privy::KrakenEmbedGetCustomOrderHistoryResponse::Result }

      # @!attribute error
      #
      #   @return [Array<Object>, nil]
      optional :error, Privy::Internal::Type::ArrayOf[Privy::Internal::Type::Unknown]

      # @!attribute errors
      #
      #   @return [Array<Object>, nil]
      optional :errors, Privy::Internal::Type::ArrayOf[Privy::Internal::Type::Unknown]

      # @!method initialize(result:, error: nil, errors: nil)
      #   Response body for getting custom order execution history.
      #
      #   @param result [Privy::Models::KrakenEmbedGetCustomOrderHistoryResponse::Result] Result payload for custom order history response.
      #
      #   @param error [Array<Object>]
      #
      #   @param errors [Array<Object>]

      # @see Privy::Models::KrakenEmbedGetCustomOrderHistoryResponse#result
      class Result < Privy::Models::KrakenEmbedGetCustomOrderHistoryResult
        # @!method initialize
        #   Result payload for custom order history response.
      end
    end
  end
end
