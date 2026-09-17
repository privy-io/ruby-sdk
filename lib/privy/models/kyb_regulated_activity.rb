# frozen_string_literal: true

module Privy
  module Models
    class KYBRegulatedActivity < Privy::Internal::Type::BaseModel
      # @!attribute license_number
      #   License number issued by the regulator.
      #
      #   @return [String]
      required :license_number, String

      # @!attribute primary_regulatory_authority_country
      #   ISO 3166-1 alpha-3 country code of the primary regulator.
      #
      #   @return [String]
      required :primary_regulatory_authority_country, String

      # @!attribute primary_regulatory_authority_name
      #   Name of the primary regulator.
      #
      #   @return [String]
      required :primary_regulatory_authority_name, String

      # @!attribute regulated_activities_description
      #   Description of the regulated activities performed.
      #
      #   @return [String]
      required :regulated_activities_description, String

      # @!method initialize(license_number:, primary_regulatory_authority_country:, primary_regulatory_authority_name:, regulated_activities_description:)
      #   Details of the regulated activity a business is licensed to perform.
      #
      #   @param license_number [String] License number issued by the regulator.
      #
      #   @param primary_regulatory_authority_country [String] ISO 3166-1 alpha-3 country code of the primary regulator.
      #
      #   @param primary_regulatory_authority_name [String] Name of the primary regulator.
      #
      #   @param regulated_activities_description [String] Description of the regulated activities performed.
    end
  end
end
