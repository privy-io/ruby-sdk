# typed: strong

module Privy
  module Models
    class KYBRegulatedActivity < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::KYBRegulatedActivity, Privy::Internal::AnyHash)
        end

      # License number issued by the regulator.
      sig { returns(String) }
      attr_accessor :license_number

      # ISO 3166-1 alpha-3 country code of the primary regulator.
      sig { returns(String) }
      attr_accessor :primary_regulatory_authority_country

      # Name of the primary regulator.
      sig { returns(String) }
      attr_accessor :primary_regulatory_authority_name

      # Description of the regulated activities performed.
      sig { returns(String) }
      attr_accessor :regulated_activities_description

      # Details of the regulated activity a business is licensed to perform.
      sig do
        params(
          license_number: String,
          primary_regulatory_authority_country: String,
          primary_regulatory_authority_name: String,
          regulated_activities_description: String
        ).returns(T.attached_class)
      end
      def self.new(
        # License number issued by the regulator.
        license_number:,
        # ISO 3166-1 alpha-3 country code of the primary regulator.
        primary_regulatory_authority_country:,
        # Name of the primary regulator.
        primary_regulatory_authority_name:,
        # Description of the regulated activities performed.
        regulated_activities_description:
      )
      end

      sig do
        override.returns(
          {
            license_number: String,
            primary_regulatory_authority_country: String,
            primary_regulatory_authority_name: String,
            regulated_activities_description: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
