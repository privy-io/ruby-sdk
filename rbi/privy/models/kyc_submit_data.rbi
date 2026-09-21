# typed: strong

module Privy
  module Models
    class KYCSubmitData < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::KYCSubmitData, Privy::Internal::AnyHash) }

      # Date of birth in YYYY-MM-DD format.
      sig { returns(T.nilable(String)) }
      attr_reader :date_of_birth

      sig { params(date_of_birth: String).void }
      attr_writer :date_of_birth

      # Email address.
      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { params(email: String).void }
      attr_writer :email

      # Legal first name.
      sig { returns(T.nilable(String)) }
      attr_reader :first_name

      sig { params(first_name: String).void }
      attr_writer :first_name

      # Identifying documents.
      sig { returns(T.nilable(T::Array[Privy::VerificationDocument])) }
      attr_reader :identifying_information

      sig do
        params(
          identifying_information: T::Array[Privy::VerificationDocument::OrHash]
        ).void
      end
      attr_writer :identifying_information

      # Legal last name.
      sig { returns(T.nilable(String)) }
      attr_reader :last_name

      sig { params(last_name: String).void }
      attr_writer :last_name

      # Legal middle name.
      sig { returns(T.nilable(String)) }
      attr_reader :middle_name

      sig { params(middle_name: String).void }
      attr_writer :middle_name

      # ISO 3166-1 alpha-3 codes for all nationalities held.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :nationalities

      sig { params(nationalities: T::Array[String]).void }
      attr_writer :nationalities

      # Attests the user is a nonresident alien to satisfy identification without a US
      # tax ID (must be enabled for you).
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :nonresident_alien_attestation

      sig { params(nonresident_alien_attestation: T::Boolean).void }
      attr_writer :nonresident_alien_attestation

      # Phone number in E.164 format.
      sig { returns(T.nilable(String)) }
      attr_reader :phone

      sig { params(phone: String).void }
      attr_writer :phone

      # A postal address used in KYC and KYB data submission.
      sig { returns(T.nilable(Privy::VerificationAddress)) }
      attr_reader :residential_address

      sig do
        params(residential_address: Privy::VerificationAddress::OrHash).void
      end
      attr_writer :residential_address

      # Latin-1 transliteration of the first name. Required for non-Latin-1 names.
      sig { returns(T.nilable(String)) }
      attr_reader :transliterated_first_name

      sig { params(transliterated_first_name: String).void }
      attr_writer :transliterated_first_name

      # Latin-1 transliteration of the last name. Required for non-Latin-1 names.
      sig { returns(T.nilable(String)) }
      attr_reader :transliterated_last_name

      sig { params(transliterated_last_name: String).void }
      attr_writer :transliterated_last_name

      # Latin-1 transliteration of the middle name. Required for non-Latin-1 names.
      sig { returns(T.nilable(String)) }
      attr_reader :transliterated_middle_name

      sig { params(transliterated_middle_name: String).void }
      attr_writer :transliterated_middle_name

      # A postal address used in KYC and KYB data submission.
      sig { returns(T.nilable(Privy::VerificationAddress)) }
      attr_reader :transliterated_residential_address

      sig do
        params(
          transliterated_residential_address: Privy::VerificationAddress::OrHash
        ).void
      end
      attr_writer :transliterated_residential_address

      # KYC verification data for headless submission.
      sig do
        params(
          date_of_birth: String,
          email: String,
          first_name: String,
          identifying_information:
            T::Array[Privy::VerificationDocument::OrHash],
          last_name: String,
          middle_name: String,
          nationalities: T::Array[String],
          nonresident_alien_attestation: T::Boolean,
          phone: String,
          residential_address: Privy::VerificationAddress::OrHash,
          transliterated_first_name: String,
          transliterated_last_name: String,
          transliterated_middle_name: String,
          transliterated_residential_address: Privy::VerificationAddress::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Date of birth in YYYY-MM-DD format.
        date_of_birth: nil,
        # Email address.
        email: nil,
        # Legal first name.
        first_name: nil,
        # Identifying documents.
        identifying_information: nil,
        # Legal last name.
        last_name: nil,
        # Legal middle name.
        middle_name: nil,
        # ISO 3166-1 alpha-3 codes for all nationalities held.
        nationalities: nil,
        # Attests the user is a nonresident alien to satisfy identification without a US
        # tax ID (must be enabled for you).
        nonresident_alien_attestation: nil,
        # Phone number in E.164 format.
        phone: nil,
        # A postal address used in KYC and KYB data submission.
        residential_address: nil,
        # Latin-1 transliteration of the first name. Required for non-Latin-1 names.
        transliterated_first_name: nil,
        # Latin-1 transliteration of the last name. Required for non-Latin-1 names.
        transliterated_last_name: nil,
        # Latin-1 transliteration of the middle name. Required for non-Latin-1 names.
        transliterated_middle_name: nil,
        # A postal address used in KYC and KYB data submission.
        transliterated_residential_address: nil
      )
      end

      sig do
        override.returns(
          {
            date_of_birth: String,
            email: String,
            first_name: String,
            identifying_information: T::Array[Privy::VerificationDocument],
            last_name: String,
            middle_name: String,
            nationalities: T::Array[String],
            nonresident_alien_attestation: T::Boolean,
            phone: String,
            residential_address: Privy::VerificationAddress,
            transliterated_first_name: String,
            transliterated_last_name: String,
            transliterated_middle_name: String,
            transliterated_residential_address: Privy::VerificationAddress
          }
        )
      end
      def to_hash
      end
    end
  end
end
