# frozen_string_literal: true

module Privy
  module Models
    class KYBAssociatedPerson < Privy::Internal::Type::BaseModel
      # @!attribute date_of_birth
      #   Date of birth in YYYY-MM-DD format. Must be 18 years or older.
      #
      #   @return [String]
      required :date_of_birth, String

      # @!attribute email
      #   Email address.
      #
      #   @return [String]
      required :email, String

      # @!attribute first_name
      #   Legal first name.
      #
      #   @return [String]
      required :first_name, String

      # @!attribute has_control
      #   Whether this person is a control person.
      #
      #   @return [Boolean]
      required :has_control, Privy::Internal::Type::Boolean

      # @!attribute has_ownership
      #   Whether this person owns 25% or more of the business.
      #
      #   @return [Boolean]
      required :has_ownership, Privy::Internal::Type::Boolean

      # @!attribute identifying_information
      #   Identifying documents for this person.
      #
      #   @return [Array<Privy::Models::VerificationDocument>]
      required :identifying_information, -> { Privy::Internal::Type::ArrayOf[Privy::VerificationDocument] }

      # @!attribute is_signer
      #   Whether this person is a signer for the business.
      #
      #   @return [Boolean]
      required :is_signer, Privy::Internal::Type::Boolean

      # @!attribute last_name
      #   Legal last name.
      #
      #   @return [String]
      required :last_name, String

      # @!attribute residential_address
      #   A postal address used in KYC and KYB data submission.
      #
      #   @return [Privy::Models::VerificationAddress]
      required :residential_address, -> { Privy::VerificationAddress }

      # @!attribute documents
      #   Supporting documents for this person, such as proof of address.
      #
      #   @return [Array<Privy::Models::KYBIndividualDocument>, nil]
      optional :documents, -> { Privy::Internal::Type::ArrayOf[Privy::KYBIndividualDocument] }

      # @!attribute is_director
      #   Whether this person is a director.
      #
      #   @return [Boolean, nil]
      optional :is_director, Privy::Internal::Type::Boolean

      # @!attribute middle_name
      #   Legal middle name.
      #
      #   @return [String, nil]
      optional :middle_name, String

      # @!attribute nationalities
      #   ISO 3166-1 alpha-3 codes for all nationalities held.
      #
      #   @return [Array<String>, nil]
      optional :nationalities, Privy::Internal::Type::ArrayOf[String]

      # @!attribute ownership_percentage
      #   Percentage of the business this person owns.
      #
      #   @return [Integer, nil]
      optional :ownership_percentage, Integer

      # @!attribute phone
      #   Phone number in E.164 format.
      #
      #   @return [String, nil]
      optional :phone, String

      # @!attribute place_of_birth
      #   Place of birth for an associated person.
      #
      #   @return [Privy::Models::KYBPlaceOfBirth, nil]
      optional :place_of_birth, -> { Privy::KYBPlaceOfBirth }

      # @!attribute relationship_established_at
      #   Date the relationship with the business was established, in YYYY-MM-DD format.
      #
      #   @return [String, nil]
      optional :relationship_established_at, String

      # @!attribute title
      #   Job title. Required when has_control is true.
      #
      #   @return [String, nil]
      optional :title, String

      # @!attribute transliterated_first_name
      #   Latin-1 transliteration of the first name. Required for non-Latin-1 names.
      #
      #   @return [String, nil]
      optional :transliterated_first_name, String

      # @!attribute transliterated_last_name
      #   Latin-1 transliteration of the last name. Required for non-Latin-1 names.
      #
      #   @return [String, nil]
      optional :transliterated_last_name, String

      # @!attribute transliterated_middle_name
      #   Latin-1 transliteration of the middle name. Required for non-Latin-1 names.
      #
      #   @return [String, nil]
      optional :transliterated_middle_name, String

      # @!attribute transliterated_residential_address
      #   A postal address used in KYC and KYB data submission.
      #
      #   @return [Privy::Models::VerificationAddress, nil]
      optional :transliterated_residential_address, -> { Privy::VerificationAddress }

      # @!method initialize(date_of_birth:, email:, first_name:, has_control:, has_ownership:, identifying_information:, is_signer:, last_name:, residential_address:, documents: nil, is_director: nil, middle_name: nil, nationalities: nil, ownership_percentage: nil, phone: nil, place_of_birth: nil, relationship_established_at: nil, title: nil, transliterated_first_name: nil, transliterated_last_name: nil, transliterated_middle_name: nil, transliterated_residential_address: nil)
      #   A beneficial owner, control person, or signer associated with the business. At
      #   least one of has_ownership, has_control, or is_signer must be true, and the
      #   business must have at least one control person and one signer.
      #
      #   @param date_of_birth [String] Date of birth in YYYY-MM-DD format. Must be 18 years or older.
      #
      #   @param email [String] Email address.
      #
      #   @param first_name [String] Legal first name.
      #
      #   @param has_control [Boolean] Whether this person is a control person.
      #
      #   @param has_ownership [Boolean] Whether this person owns 25% or more of the business.
      #
      #   @param identifying_information [Array<Privy::Models::VerificationDocument>] Identifying documents for this person.
      #
      #   @param is_signer [Boolean] Whether this person is a signer for the business.
      #
      #   @param last_name [String] Legal last name.
      #
      #   @param residential_address [Privy::Models::VerificationAddress] A postal address used in KYC and KYB data submission.
      #
      #   @param documents [Array<Privy::Models::KYBIndividualDocument>] Supporting documents for this person, such as proof of address.
      #
      #   @param is_director [Boolean] Whether this person is a director.
      #
      #   @param middle_name [String] Legal middle name.
      #
      #   @param nationalities [Array<String>] ISO 3166-1 alpha-3 codes for all nationalities held.
      #
      #   @param ownership_percentage [Integer] Percentage of the business this person owns.
      #
      #   @param phone [String] Phone number in E.164 format.
      #
      #   @param place_of_birth [Privy::Models::KYBPlaceOfBirth] Place of birth for an associated person.
      #
      #   @param relationship_established_at [String] Date the relationship with the business was established, in YYYY-MM-DD format.
      #
      #   @param title [String] Job title. Required when has_control is true.
      #
      #   @param transliterated_first_name [String] Latin-1 transliteration of the first name. Required for non-Latin-1 names.
      #
      #   @param transliterated_last_name [String] Latin-1 transliteration of the last name. Required for non-Latin-1 names.
      #
      #   @param transliterated_middle_name [String] Latin-1 transliteration of the middle name. Required for non-Latin-1 names.
      #
      #   @param transliterated_residential_address [Privy::Models::VerificationAddress] A postal address used in KYC and KYB data submission.
    end
  end
end
