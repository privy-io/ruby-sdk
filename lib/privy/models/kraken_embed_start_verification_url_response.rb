# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedStartVerificationURLResponse < Privy::Internal::Type::BaseModel
      # @!attribute result
      #   Result payload for start verification URL response.
      #
      #   @return [Privy::Models::KrakenEmbedStartVerificationURLResult, nil]
      required :result, -> { Privy::KrakenEmbedStartVerificationURLResult }, nil?: true

      # @!method initialize(result:)
      #   Response body for starting verification via URL.
      #
      #   @param result [Privy::Models::KrakenEmbedStartVerificationURLResult, nil] Result payload for start verification URL response.
    end
  end
end
