# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedGetEarnSummaryResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #   Kraken API response envelope for earn summary.
      #
      #   @return [Privy::Models::KrakenEmbedGetEarnSummaryKrakenResponse]
      required :data, -> { Privy::KrakenEmbedGetEarnSummaryKrakenResponse }

      # @!method initialize(data:)
      #   Earn summary for a user including Auto-Earn status, total rewards, and upcoming
      #   payouts.
      #
      #   @param data [Privy::Models::KrakenEmbedGetEarnSummaryKrakenResponse] Kraken API response envelope for earn summary.
    end
  end
end
