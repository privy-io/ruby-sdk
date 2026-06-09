# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedGetCustomOrderHistoryResponse < Privy::Internal::Type::BaseModel
      # @!attribute result
      #   Result payload for custom order history response.
      #
      #   @return [Privy::Models::KrakenEmbedGetCustomOrderHistoryResult, nil]
      required :result, -> { Privy::KrakenEmbedGetCustomOrderHistoryResult }, nil?: true

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
      #   @param result [Privy::Models::KrakenEmbedGetCustomOrderHistoryResult, nil] Result payload for custom order history response.
      #
      #   @param error [Array<Object>]
      #
      #   @param errors [Array<Object>]
    end
  end
end
