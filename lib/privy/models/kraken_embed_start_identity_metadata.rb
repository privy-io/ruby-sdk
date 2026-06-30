# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedStartIdentityMetadata < Privy::Internal::Type::BaseModel
      # @!attribute document_number
      #
      #   @return [String, nil]
      optional :document_number, String, nil?: true

      # @!attribute document_type
      #   Document types accepted for proof of identity verification.
      #
      #   @return [Symbol, Privy::Models::KrakenEmbedIdentityDocumentType, nil]
      optional :document_type, enum: -> { Privy::KrakenEmbedIdentityDocumentType }, nil?: true

      # @!attribute expiration_date
      #
      #   @return [Date, nil]
      optional :expiration_date, Date, nil?: true

      # @!attribute identity
      #   Identity information hints including full name and date of birth for proof of
      #   identity verification.
      #
      #   @return [Privy::Models::KrakenEmbedStartIdentityInfo, nil]
      optional :identity, -> { Privy::KrakenEmbedStartIdentityInfo }, nil?: true

      # @!attribute issuing_country
      #   ISO 3166-1 alpha-2 country codes supported by Kraken Embed.
      #
      #   @return [Symbol, Privy::Models::KrakenEmbedCountryCode, nil]
      optional :issuing_country, enum: -> { Privy::KrakenEmbedCountryCode }, nil?: true

      # @!attribute nationality
      #   ISO 3166-1 alpha-2 country codes supported by Kraken Embed.
      #
      #   @return [Symbol, Privy::Models::KrakenEmbedCountryCode, nil]
      optional :nationality, enum: -> { Privy::KrakenEmbedCountryCode }, nil?: true

      # @!method initialize(document_number: nil, document_type: nil, expiration_date: nil, identity: nil, issuing_country: nil, nationality: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::KrakenEmbedStartIdentityMetadata} for more details.
      #
      #   Optional best-effort metadata hints for proof of identity verification.
      #
      #   @param document_number [String, nil]
      #
      #   @param document_type [Symbol, Privy::Models::KrakenEmbedIdentityDocumentType, nil] Document types accepted for proof of identity verification.
      #
      #   @param expiration_date [Date, nil]
      #
      #   @param identity [Privy::Models::KrakenEmbedStartIdentityInfo, nil] Identity information hints including full name and date of birth for proof of id
      #
      #   @param issuing_country [Symbol, Privy::Models::KrakenEmbedCountryCode, nil] ISO 3166-1 alpha-2 country codes supported by Kraken Embed.
      #
      #   @param nationality [Symbol, Privy::Models::KrakenEmbedCountryCode, nil] ISO 3166-1 alpha-2 country codes supported by Kraken Embed.
    end
  end
end
