# frozen_string_literal: true

module Privy
  module Models
    class SparkUserTokenMetadata < Privy::Internal::Type::BaseModel
      # @!attribute decimals
      #
      #   @return [Float]
      required :decimals, Float

      # @!attribute max_supply
      #
      #   @return [String]
      required :max_supply, String

      # @!attribute raw_token_identifier
      #
      #   @return [String]
      required :raw_token_identifier, String

      # @!attribute token_name
      #
      #   @return [String]
      required :token_name, String

      # @!attribute token_public_key
      #
      #   @return [String]
      required :token_public_key, String

      # @!attribute token_ticker
      #
      #   @return [String]
      required :token_ticker, String

      # @!method initialize(decimals:, max_supply:, raw_token_identifier:, token_name:, token_public_key:, token_ticker:)
      #   Metadata for a Spark user token.
      #
      #   @param decimals [Float]
      #   @param max_supply [String]
      #   @param raw_token_identifier [String]
      #   @param token_name [String]
      #   @param token_public_key [String]
      #   @param token_ticker [String]
    end
  end
end
