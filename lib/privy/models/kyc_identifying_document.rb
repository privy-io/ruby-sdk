# frozen_string_literal: true

module Privy
  module Models
    class KYCIdentifyingDocument < Privy::Internal::Type::BaseModel
      # @!attribute issuing_country
      #   ISO 3166-1 alpha-3 issuing country code.
      #
      #   @return [String]
      required :issuing_country, String

      # @!attribute type
      #   Document type identifier.
      #
      #   @return [String]
      required :type, String

      # @!attribute description
      #   Document description.
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute expiration
      #   Document expiration date.
      #
      #   @return [String, nil]
      optional :expiration, String

      # @!attribute image_back
      #   Base64-encoded back image.
      #
      #   @return [String, nil]
      optional :image_back, String

      # @!attribute image_front
      #   Base64-encoded front image.
      #
      #   @return [String, nil]
      optional :image_front, String

      # @!attribute number
      #   Document number.
      #
      #   @return [String, nil]
      optional :number, String

      # @!method initialize(issuing_country:, type:, description: nil, expiration: nil, image_back: nil, image_front: nil, number: nil)
      #   An identity document for KYC verification.
      #
      #   @param issuing_country [String] ISO 3166-1 alpha-3 issuing country code.
      #
      #   @param type [String] Document type identifier.
      #
      #   @param description [String] Document description.
      #
      #   @param expiration [String] Document expiration date.
      #
      #   @param image_back [String] Base64-encoded back image.
      #
      #   @param image_front [String] Base64-encoded front image.
      #
      #   @param number [String] Document number.
    end
  end
end
