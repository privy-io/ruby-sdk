# typed: strong

module Privy
  module Models
    class KYCSubmitData < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::KYCSubmitData, Privy::Internal::AnyHash) }

      # Primary purpose of the individual's account, as one of the provider's
      # [accepted values](https://apidocs.bridge.xyz/platform/customers/customers/api).
      sig { returns(T.nilable(String)) }
      attr_reader :account_purpose

      sig { params(account_purpose: String).void }
      attr_writer :account_purpose

      # Free-text account purpose, required by the provider when `account_purpose` is
      # `other`.
      sig { returns(T.nilable(String)) }
      attr_reader :account_purpose_other

      sig { params(account_purpose_other: String).void }
      attr_writer :account_purpose_other

      # Whether the individual is acting as an intermediary for a third party.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :acting_as_intermediary

      sig { params(acting_as_intermediary: T::Boolean).void }
      attr_writer :acting_as_intermediary

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

      # The individual's employment status, as one of the provider's
      # [accepted values](https://apidocs.bridge.xyz/platform/customers/customers/api).
      sig { returns(T.nilable(String)) }
      attr_reader :employment_status

      sig { params(employment_status: String).void }
      attr_writer :employment_status

      # The individual's expected monthly payments, as one of the provider's
      # [USD buckets](https://apidocs.bridge.xyz/platform/customers/customers/api).
      sig { returns(T.nilable(String)) }
      attr_reader :expected_monthly_payments_usd

      sig { params(expected_monthly_payments_usd: String).void }
      attr_writer :expected_monthly_payments_usd

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

      # Result of a KYC/AML or OFAC screen you performed and are relying on the provider
      # to accept, honoured only for developers enrolled in reliance.
      sig { returns(T.nilable(Privy::KyxScreen)) }
      attr_reader :kyc_screen

      sig { params(kyc_screen: Privy::KyxScreen::OrHash).void }
      attr_writer :kyc_screen

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

      # The individual's most recent occupation, as an ISCO code, passed through to the
      # provider.
      sig { returns(T.nilable(String)) }
      attr_reader :most_recent_occupation

      sig { params(most_recent_occupation: String).void }
      attr_writer :most_recent_occupation

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

      # Result of a KYC/AML or OFAC screen you performed and are relying on the provider
      # to accept, honoured only for developers enrolled in reliance.
      sig { returns(T.nilable(Privy::KyxScreen)) }
      attr_reader :ofac_screen

      sig { params(ofac_screen: Privy::KyxScreen::OrHash).void }
      attr_writer :ofac_screen

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

      # Primary source of the individual's funds, as one of the provider's
      # [accepted values](https://apidocs.bridge.xyz/platform/customers/customers/api).
      sig { returns(T.nilable(String)) }
      attr_reader :source_of_funds

      sig { params(source_of_funds: String).void }
      attr_writer :source_of_funds

      # Stripe Link shared data ID that supplies name, date of birth, address, and US
      # SSN (omit those fields); retrieval errors surface in endorsements[].issues.
      sig { returns(T.nilable(String)) }
      attr_reader :stripe_link_shared_data_id

      sig { params(stripe_link_shared_data_id: String).void }
      attr_writer :stripe_link_shared_data_id

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

      # When you verified the user against a database source (ISO 8601), which loosens
      # the identifying-document requirement under reliance.
      sig do
        returns(T.nilable(Privy::KYCSubmitData::VerifiedDatabaseAt::Variants))
      end
      attr_reader :verified_database_at

      sig do
        params(
          verified_database_at:
            Privy::KYCSubmitData::VerifiedDatabaseAt::Variants
        ).void
      end
      attr_writer :verified_database_at

      # When you verified the government ID (ISO 8601), which loosens the
      # identifying-document requirement under reliance.
      sig do
        returns(T.nilable(Privy::KYCSubmitData::VerifiedGovidAt::Variants))
      end
      attr_reader :verified_govid_at

      sig do
        params(
          verified_govid_at: Privy::KYCSubmitData::VerifiedGovidAt::Variants
        ).void
      end
      attr_writer :verified_govid_at

      # When you verified proof of address (ISO 8601), required for EEA customers and
      # SEPA rails under reliance.
      sig do
        returns(
          T.nilable(Privy::KYCSubmitData::VerifiedProofOfAddressAt::Variants)
        )
      end
      attr_reader :verified_proof_of_address_at

      sig do
        params(
          verified_proof_of_address_at:
            Privy::KYCSubmitData::VerifiedProofOfAddressAt::Variants
        ).void
      end
      attr_writer :verified_proof_of_address_at

      # KYC verification data for headless submission.
      sig do
        params(
          account_purpose: String,
          account_purpose_other: String,
          acting_as_intermediary: T::Boolean,
          date_of_birth: String,
          email: String,
          employment_status: String,
          expected_monthly_payments_usd: String,
          first_name: String,
          identifying_information:
            T::Array[Privy::VerificationDocument::OrHash],
          kyc_screen: Privy::KyxScreen::OrHash,
          last_name: String,
          middle_name: String,
          most_recent_occupation: String,
          nationalities: T::Array[String],
          nonresident_alien_attestation: T::Boolean,
          ofac_screen: Privy::KyxScreen::OrHash,
          phone: String,
          residential_address: Privy::VerificationAddress::OrHash,
          source_of_funds: String,
          stripe_link_shared_data_id: String,
          transliterated_first_name: String,
          transliterated_last_name: String,
          transliterated_middle_name: String,
          transliterated_residential_address:
            Privy::VerificationAddress::OrHash,
          verified_database_at:
            Privy::KYCSubmitData::VerifiedDatabaseAt::Variants,
          verified_govid_at: Privy::KYCSubmitData::VerifiedGovidAt::Variants,
          verified_proof_of_address_at:
            Privy::KYCSubmitData::VerifiedProofOfAddressAt::Variants
        ).returns(T.attached_class)
      end
      def self.new(
        # Primary purpose of the individual's account, as one of the provider's
        # [accepted values](https://apidocs.bridge.xyz/platform/customers/customers/api).
        account_purpose: nil,
        # Free-text account purpose, required by the provider when `account_purpose` is
        # `other`.
        account_purpose_other: nil,
        # Whether the individual is acting as an intermediary for a third party.
        acting_as_intermediary: nil,
        # Date of birth in YYYY-MM-DD format.
        date_of_birth: nil,
        # Email address.
        email: nil,
        # The individual's employment status, as one of the provider's
        # [accepted values](https://apidocs.bridge.xyz/platform/customers/customers/api).
        employment_status: nil,
        # The individual's expected monthly payments, as one of the provider's
        # [USD buckets](https://apidocs.bridge.xyz/platform/customers/customers/api).
        expected_monthly_payments_usd: nil,
        # Legal first name.
        first_name: nil,
        # Identifying documents.
        identifying_information: nil,
        # Result of a KYC/AML or OFAC screen you performed and are relying on the provider
        # to accept, honoured only for developers enrolled in reliance.
        kyc_screen: nil,
        # Legal last name.
        last_name: nil,
        # Legal middle name.
        middle_name: nil,
        # The individual's most recent occupation, as an ISCO code, passed through to the
        # provider.
        most_recent_occupation: nil,
        # ISO 3166-1 alpha-3 codes for all nationalities held.
        nationalities: nil,
        # Attests the user is a nonresident alien to satisfy identification without a US
        # tax ID (must be enabled for you).
        nonresident_alien_attestation: nil,
        # Result of a KYC/AML or OFAC screen you performed and are relying on the provider
        # to accept, honoured only for developers enrolled in reliance.
        ofac_screen: nil,
        # Phone number in E.164 format.
        phone: nil,
        # A postal address used in KYC and KYB data submission.
        residential_address: nil,
        # Primary source of the individual's funds, as one of the provider's
        # [accepted values](https://apidocs.bridge.xyz/platform/customers/customers/api).
        source_of_funds: nil,
        # Stripe Link shared data ID that supplies name, date of birth, address, and US
        # SSN (omit those fields); retrieval errors surface in endorsements[].issues.
        stripe_link_shared_data_id: nil,
        # Latin-1 transliteration of the first name. Required for non-Latin-1 names.
        transliterated_first_name: nil,
        # Latin-1 transliteration of the last name. Required for non-Latin-1 names.
        transliterated_last_name: nil,
        # Latin-1 transliteration of the middle name. Required for non-Latin-1 names.
        transliterated_middle_name: nil,
        # A postal address used in KYC and KYB data submission.
        transliterated_residential_address: nil,
        # When you verified the user against a database source (ISO 8601), which loosens
        # the identifying-document requirement under reliance.
        verified_database_at: nil,
        # When you verified the government ID (ISO 8601), which loosens the
        # identifying-document requirement under reliance.
        verified_govid_at: nil,
        # When you verified proof of address (ISO 8601), required for EEA customers and
        # SEPA rails under reliance.
        verified_proof_of_address_at: nil
      )
      end

      sig do
        override.returns(
          {
            account_purpose: String,
            account_purpose_other: String,
            acting_as_intermediary: T::Boolean,
            date_of_birth: String,
            email: String,
            employment_status: String,
            expected_monthly_payments_usd: String,
            first_name: String,
            identifying_information: T::Array[Privy::VerificationDocument],
            kyc_screen: Privy::KyxScreen,
            last_name: String,
            middle_name: String,
            most_recent_occupation: String,
            nationalities: T::Array[String],
            nonresident_alien_attestation: T::Boolean,
            ofac_screen: Privy::KyxScreen,
            phone: String,
            residential_address: Privy::VerificationAddress,
            source_of_funds: String,
            stripe_link_shared_data_id: String,
            transliterated_first_name: String,
            transliterated_last_name: String,
            transliterated_middle_name: String,
            transliterated_residential_address: Privy::VerificationAddress,
            verified_database_at:
              Privy::KYCSubmitData::VerifiedDatabaseAt::Variants,
            verified_govid_at: Privy::KYCSubmitData::VerifiedGovidAt::Variants,
            verified_proof_of_address_at:
              Privy::KYCSubmitData::VerifiedProofOfAddressAt::Variants
          }
        )
      end
      def to_hash
      end

      # When you verified the user against a database source (ISO 8601), which loosens
      # the identifying-document requirement under reliance.
      module VerifiedDatabaseAt
        extend Privy::Internal::Type::Union

        Variants = T.type_alias { T.any(Time, Date) }

        sig do
          override.returns(
            T::Array[Privy::KYCSubmitData::VerifiedDatabaseAt::Variants]
          )
        end
        def self.variants
        end
      end

      # When you verified the government ID (ISO 8601), which loosens the
      # identifying-document requirement under reliance.
      module VerifiedGovidAt
        extend Privy::Internal::Type::Union

        Variants = T.type_alias { T.any(Time, Date) }

        sig do
          override.returns(
            T::Array[Privy::KYCSubmitData::VerifiedGovidAt::Variants]
          )
        end
        def self.variants
        end
      end

      # When you verified proof of address (ISO 8601), required for EEA customers and
      # SEPA rails under reliance.
      module VerifiedProofOfAddressAt
        extend Privy::Internal::Type::Union

        Variants = T.type_alias { T.any(Time, Date) }

        sig do
          override.returns(
            T::Array[Privy::KYCSubmitData::VerifiedProofOfAddressAt::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
