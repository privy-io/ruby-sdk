# frozen_string_literal: true

module Privy
  module Models
    class KYCResidentialAddress < Privy::Internal::Type::BaseModel
      # @!attribute city
      #   City.
      #
      #   @return [String]
      required :city, String

      # @!attribute country
      #   ISO 3166-1 alpha-3 country code.
      #
      #   @return [String]
      required :country, String

      # @!attribute street_line_1
      #   Street address line 1.
      #
      #   @return [String]
      required :street_line_1, String

      # @!attribute subdivision
      #   State or province code.
      #
      #   @return [String]
      required :subdivision, String

      # @!attribute postal_code
      #   Postal code.
      #
      #   @return [String, nil]
      optional :postal_code, String

      # @!attribute street_line_2
      #   Street address line 2.
      #
      #   @return [String, nil]
      optional :street_line_2, String

      # @!method initialize(city:, country:, street_line_1:, subdivision:, postal_code: nil, street_line_2: nil)
      #   Residential address for KYC data submission.
      #
      #   @param city [String] City.
      #
      #   @param country [String] ISO 3166-1 alpha-3 country code.
      #
      #   @param street_line_1 [String] Street address line 1.
      #
      #   @param subdivision [String] State or province code.
      #
      #   @param postal_code [String] Postal code.
      #
      #   @param street_line_2 [String] Street address line 2.
    end
  end
end
