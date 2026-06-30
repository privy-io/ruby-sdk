# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedStartAddressMetadata < Privy::Internal::Type::BaseModel
      # @!attribute address
      #   User's residential address including street, city, postal code, and country.
      #
      #   @return [Privy::Models::KrakenEmbedResidence, nil]
      optional :address, -> { Privy::KrakenEmbedResidence }, nil?: true

      # @!attribute document_number
      #
      #   @return [String, nil]
      optional :document_number, String, nil?: true

      # @!attribute document_type
      #   Document types accepted for proof of address verification.
      #
      #   @return [Symbol, Privy::Models::KrakenEmbedResidenceDocumentType, nil]
      optional :document_type, enum: -> { Privy::KrakenEmbedResidenceDocumentType }, nil?: true

      # @!attribute expiration_date
      #
      #   @return [Date, nil]
      optional :expiration_date, Date, nil?: true

      # @!method initialize(address: nil, document_number: nil, document_type: nil, expiration_date: nil)
      #   Optional best-effort metadata hints for proof of address verification.
      #
      #   @param address [Privy::Models::KrakenEmbedResidence, nil] User's residential address including street, city, postal code, and country.
      #
      #   @param document_number [String, nil]
      #
      #   @param document_type [Symbol, Privy::Models::KrakenEmbedResidenceDocumentType, nil] Document types accepted for proof of address verification.
      #
      #   @param expiration_date [Date, nil]
    end
  end
end
