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

      # @!attribute kyc_screen
      #   Result of a KYC/AML or OFAC screen you performed and are relying on the provider
      #   to accept, honoured only for developers enrolled in reliance.
      #
      #   @return [Privy::Models::KyxScreen, nil]
      optional :kyc_screen, -> { Privy::KyxScreen }

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

      # @!attribute ofac_screen
      #   Result of a KYC/AML or OFAC screen you performed and are relying on the provider
      #   to accept, honoured only for developers enrolled in reliance.
      #
      #   @return [Privy::Models::KyxScreen, nil]
      optional :ofac_screen, -> { Privy::KyxScreen }

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

      # @!attribute stripe_link_shared_data_id
      #   Stripe Link shared data ID that supplies name, date of birth, address, and US
      #   SSN (omit those fields); retrieval errors surface in endorsements[].issues.
      #
      #   @return [String, nil]
      optional :stripe_link_shared_data_id, String

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

      # @!attribute verified_database_at
      #   When you verified the user against a database source (ISO 8601), which loosens
      #   the identifying-document requirement under reliance.
      #
      #   @return [Time, Date, nil]
      optional :verified_database_at, union: -> { Privy::KYCSubmitData::VerifiedDatabaseAt }

      # @!attribute verified_govid_at
      #   When you verified the government ID (ISO 8601), which loosens the
      #   identifying-document requirement under reliance.
      #
      #   @return [Time, Date, nil]
      optional :verified_govid_at, union: -> { Privy::KYCSubmitData::VerifiedGovidAt }

      # @!attribute verified_proof_of_address_at
      #   When you verified proof of address (ISO 8601), required for EEA customers and
      #   SEPA rails under reliance.
      #
      #   @return [Time, Date, nil]
      optional :verified_proof_of_address_at, union: -> { Privy::KYCSubmitData::VerifiedProofOfAddressAt }

      # @!method initialize(date_of_birth: nil, email: nil, first_name: nil, identifying_information: nil, kyc_screen: nil, last_name: nil, middle_name: nil, nationalities: nil, nonresident_alien_attestation: nil, ofac_screen: nil, phone: nil, residential_address: nil, stripe_link_shared_data_id: nil, transliterated_first_name: nil, transliterated_last_name: nil, transliterated_middle_name: nil, transliterated_residential_address: nil, verified_database_at: nil, verified_govid_at: nil, verified_proof_of_address_at: nil)
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
      #   @param kyc_screen [Privy::Models::KyxScreen] Result of a KYC/AML or OFAC screen you performed and are relying on the provider
      #
      #   @param last_name [String] Legal last name.
      #
      #   @param middle_name [String] Legal middle name.
      #
      #   @param nationalities [Array<String>] ISO 3166-1 alpha-3 codes for all nationalities held.
      #
      #   @param nonresident_alien_attestation [Boolean] Attests the user is a nonresident alien to satisfy identification without a US t
      #
      #   @param ofac_screen [Privy::Models::KyxScreen] Result of a KYC/AML or OFAC screen you performed and are relying on the provider
      #
      #   @param phone [String] Phone number in E.164 format.
      #
      #   @param residential_address [Privy::Models::VerificationAddress] A postal address used in KYC and KYB data submission.
      #
      #   @param stripe_link_shared_data_id [String] Stripe Link shared data ID that supplies name, date of birth, address, and US SS
      #
      #   @param transliterated_first_name [String] Latin-1 transliteration of the first name. Required for non-Latin-1 names.
      #
      #   @param transliterated_last_name [String] Latin-1 transliteration of the last name. Required for non-Latin-1 names.
      #
      #   @param transliterated_middle_name [String] Latin-1 transliteration of the middle name. Required for non-Latin-1 names.
      #
      #   @param transliterated_residential_address [Privy::Models::VerificationAddress] A postal address used in KYC and KYB data submission.
      #
      #   @param verified_database_at [Time, Date] When you verified the user against a database source (ISO 8601), which loosens t
      #
      #   @param verified_govid_at [Time, Date] When you verified the government ID (ISO 8601), which loosens the identifying-do
      #
      #   @param verified_proof_of_address_at [Time, Date] When you verified proof of address (ISO 8601), required for EEA customers and SE

      # When you verified the user against a database source (ISO 8601), which loosens
      # the identifying-document requirement under reliance.
      #
      # @see Privy::Models::KYCSubmitData#verified_database_at
      module VerifiedDatabaseAt
        extend Privy::Internal::Type::Union

        variant Time

        variant Date

        # @!method self.variants
        #   @return [Array(Time, Date)]
      end

      # When you verified the government ID (ISO 8601), which loosens the
      # identifying-document requirement under reliance.
      #
      # @see Privy::Models::KYCSubmitData#verified_govid_at
      module VerifiedGovidAt
        extend Privy::Internal::Type::Union

        variant Time

        variant Date

        # @!method self.variants
        #   @return [Array(Time, Date)]
      end

      # When you verified proof of address (ISO 8601), required for EEA customers and
      # SEPA rails under reliance.
      #
      # @see Privy::Models::KYCSubmitData#verified_proof_of_address_at
      module VerifiedProofOfAddressAt
        extend Privy::Internal::Type::Union

        variant Time

        variant Date

        # @!method self.variants
        #   @return [Array(Time, Date)]
      end
    end
  end
end
