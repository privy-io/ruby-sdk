# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedStartVerificationURLResponse < Privy::Internal::Type::BaseModel
      # @!attribute result
      #   Result payload for start verification URL response.
      #
      #   @return [Privy::Models::KrakenEmbedStartVerificationURLResponse::Result]
      required :result, -> { Privy::KrakenEmbedStartVerificationURLResponse::Result }

      # @!method initialize(result:)
      #   Response body for starting verification via URL.
      #
      #   @param result [Privy::Models::KrakenEmbedStartVerificationURLResponse::Result] Result payload for start verification URL response.

      # @see Privy::Models::KrakenEmbedStartVerificationURLResponse#result
      class Result < Privy::Models::KrakenEmbedStartVerificationURLResult
        # @!method initialize
        #   Result payload for start verification URL response.
      end
    end
  end
end
