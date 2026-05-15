# frozen_string_literal: true

module Privy
  module Models
    class SparkTokenBalance < Privy::Internal::Type::BaseModel
      # @!attribute balance
      #
      #   @return [String]
      required :balance, String

      # @!attribute token_metadata
      #   Metadata for a Spark user token.
      #
      #   @return [Privy::Models::SparkUserTokenMetadata]
      required :token_metadata, -> { Privy::SparkUserTokenMetadata }

      # @!method initialize(balance:, token_metadata:)
      #   Balance of a Spark token.
      #
      #   @param balance [String]
      #
      #   @param token_metadata [Privy::Models::SparkUserTokenMetadata] Metadata for a Spark user token.
    end
  end
end
