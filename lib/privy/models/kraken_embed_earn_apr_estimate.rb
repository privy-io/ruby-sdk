# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedEarnAprEstimate < Privy::Internal::Type::BaseModel
      # @!attribute high
      #
      #   @return [String]
      required :high, String

      # @!attribute low
      #
      #   @return [String]
      required :low, String

      # @!method initialize(high:, low:)
      #   Low and high estimate of the yield of an earn asset.
      #
      #   @param high [String]
      #   @param low [String]
    end
  end
end
