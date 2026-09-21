# frozen_string_literal: true

module Privy
  module Models
    class KYCSubmitData < Privy::Internal::Type::BaseModel
      # @!attribute date_of_birth
      #   Date of birth in YYYY-MM-DD format.
      #
      #   @return [String, nil]
      optional :date_of_birth, String

      # @!attribute email
      #   Email address.
      #
      #   @return [String, nil]
      optional :email, String

      # @!attribute first_name
      #   Legal first name.
      #
      #   @return [String, nil]
      optional :first_name, String

      # @!attribute identifying_information
      #   Identifying documents.
      #
      #   @return [Array<Privy::Models::VerificationDocument>, nil]
      optional :identifying_information, -> { Privy::Internal::Type::ArrayOf[Privy::VerificationDocument] }

      # @!attribute last_name
      #   Legal last name.
      #
      #   @return [String, nil]
      optional :last_name, String

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

      # @!attribute nonresident_alien_attestation
      #   Attests the user is a nonresident alien to satisfy identification without a US
      #   tax ID (must be enabled for you).
      #
      #   @return [Boolean, nil]
      optional :nonresident_alien_attestation, Privy::Internal::Type::Boolean

      # @!attribute phone
      #   Phone number in E.164 format.
      #
      #   @return [String, nil]
      optional :phone, String

      # @!attribute residential_address
      #   A postal address used in KYC and KYB data submission.
      #
      #   @return [Privy::Models::VerificationAddress, nil]
      optional :residential_address, -> { Privy::VerificationAddress }

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

      # @!method initialize(date_of_birth: nil, email: nil, first_name: nil, identifying_information: nil, last_name: nil, middle_name: nil, nationalities: nil, nonresident_alien_attestation: nil, phone: nil, residential_address: nil, transliterated_first_name: nil, transliterated_last_name: nil, transliterated_middle_name: nil, transliterated_residential_address: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::KYCSubmitData} for more details.
      #
      #   KYC verification data for headless submission.
      #
      #   @param date_of_birth [String] Date of birth in YYYY-MM-DD format.
      #
      #   @param email [String] Email address.
      #
      #   @param first_name [String] Legal first name.
      #
      #   @param identifying_information [Array<Privy::Models::VerificationDocument>] Identifying documents.
      #
      #   @param last_name [String] Legal last name.
      #
      #   @param middle_name [String] Legal middle name.
      #
      #   @param nationalities [Array<String>] ISO 3166-1 alpha-3 codes for all nationalities held.
      #
      #   @param nonresident_alien_attestation [Boolean] Attests the user is a nonresident alien to satisfy identification without a US t
      #
      #   @param phone [String] Phone number in E.164 format.
      #
      #   @param residential_address [Privy::Models::VerificationAddress] A postal address used in KYC and KYB data submission.
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
