# frozen_string_literal: true

module Privy
  module Models
    class KYBPlaceOfBirth < Privy::Internal::Type::BaseModel
      # @!attribute country
      #   ISO 3166-1 alpha-3 country code.
      #
      #   @return [String]
      required :country, String

      # @!attribute city
      #   City of birth.
      #
      #   @return [String, nil]
      optional :city, String

      # @!method initialize(country:, city: nil)
      #   Place of birth for an associated person.
      #
      #   @param country [String] ISO 3166-1 alpha-3 country code.
      #
      #   @param city [String] City of birth.
    end
  end
end
