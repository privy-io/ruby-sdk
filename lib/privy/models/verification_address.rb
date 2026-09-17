# frozen_string_literal: true

module Privy
  module Models
    class VerificationAddress < Privy::Internal::Type::BaseModel
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

      # @!attribute postal_code
      #   Postal code. Required for countries that use them.
      #
      #   @return [String, nil]
      optional :postal_code, String

      # @!attribute street_line_2
      #   Street address line 2.
      #
      #   @return [String, nil]
      optional :street_line_2, String

      # @!attribute subdivision
      #   ISO 3166-2 state or province code. Required for US addresses.
      #
      #   @return [String, nil]
      optional :subdivision, String

      # @!method initialize(city:, country:, street_line_1:, postal_code: nil, street_line_2: nil, subdivision: nil)
      #   A postal address used in KYC and KYB data submission.
      #
      #   @param city [String] City.
      #
      #   @param country [String] ISO 3166-1 alpha-3 country code.
      #
      #   @param street_line_1 [String] Street address line 1.
      #
      #   @param postal_code [String] Postal code. Required for countries that use them.
      #
      #   @param street_line_2 [String] Street address line 2.
      #
      #   @param subdivision [String] ISO 3166-2 state or province code. Required for US addresses.
    end
  end
end
