# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedToggleAutoEarnKrakenResponse < Privy::Internal::Type::BaseModel
      # @!attribute error
      #
      #   @return [Array<Object>, nil]
      optional :error, Privy::Internal::Type::ArrayOf[Privy::Internal::Type::Unknown]

      # @!attribute errors
      #
      #   @return [Array<Object>, nil]
      optional :errors, Privy::Internal::Type::ArrayOf[Privy::Internal::Type::Unknown]

      # @!attribute result
      #
      #   @return [nil]
      optional :result, NilClass

      # @!method initialize(error: nil, errors: nil, result: nil)
      #   Kraken API response envelope for toggle auto-earn. Result is null on success.
      #
      #   @param error [Array<Object>]
      #   @param errors [Array<Object>]
      #   @param result [nil]
    end
  end
end
