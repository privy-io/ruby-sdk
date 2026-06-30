# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedResidence < Privy::Internal::Type::BaseModel
      # @!attribute city
      #
      #   @return [String]
      required :city, String

      # @!attribute country
      #   ISO 3166-1 alpha-2 country codes supported by Kraken Embed.
      #
      #   @return [Symbol, Privy::Models::KrakenEmbedCountryCode]
      required :country, enum: -> { Privy::KrakenEmbedCountryCode }

      # @!attribute line1
      #
      #   @return [String]
      required :line1, String

      # @!attribute postal_code
      #
      #   @return [String]
      required :postal_code, String

      # @!attribute line2
      #
      #   @return [String, nil]
      optional :line2, String, nil?: true

      # @!attribute province
      #
      #   @return [String, nil]
      optional :province, String, nil?: true

      # @!method initialize(city:, country:, line1:, postal_code:, line2: nil, province: nil)
      #   User's residential address including street, city, postal code, and country.
      #
      #   @param city [String]
      #
      #   @param country [Symbol, Privy::Models::KrakenEmbedCountryCode] ISO 3166-1 alpha-2 country codes supported by Kraken Embed.
      #
      #   @param line1 [String]
      #
      #   @param postal_code [String]
      #
      #   @param line2 [String, nil]
      #
      #   @param province [String, nil]
    end
  end
end
