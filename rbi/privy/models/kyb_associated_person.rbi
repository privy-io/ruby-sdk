# typed: strong

module Privy
  module Models
    class KYBAssociatedPerson < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::KYBAssociatedPerson, Privy::Internal::AnyHash)
        end

      # Date of birth in YYYY-MM-DD format. Must be 18 years or older.
      sig { returns(String) }
      attr_accessor :date_of_birth

      # Email address.
      sig { returns(String) }
      attr_accessor :email

      # Legal first name.
      sig { returns(String) }
      attr_accessor :first_name

      # Whether this person is a control person.
      sig { returns(T::Boolean) }
      attr_accessor :has_control

      # Whether this person owns 25% or more of the business.
      sig { returns(T::Boolean) }
      attr_accessor :has_ownership

      # Identifying documents for this person.
      sig { returns(T::Array[Privy::VerificationDocument]) }
      attr_accessor :identifying_information

      # Whether this person is a signer for the business.
      sig { returns(T::Boolean) }
      attr_accessor :is_signer

      # Legal last name.
      sig { returns(String) }
      attr_accessor :last_name

      # A postal address used in KYC and KYB data submission.
      sig { returns(Privy::VerificationAddress) }
      attr_reader :residential_address

      sig do
        params(residential_address: Privy::VerificationAddress::OrHash).void
      end
      attr_writer :residential_address

      # Supporting documents for this person, such as proof of address.
      sig { returns(T.nilable(T::Array[Privy::KYBIndividualDocument])) }
      attr_reader :documents

      sig do
        params(documents: T::Array[Privy::KYBIndividualDocument::OrHash]).void
      end
      attr_writer :documents

      # Whether this person is a director.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_director

      sig { params(is_director: T::Boolean).void }
      attr_writer :is_director

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

      # Percentage of the business this person owns.
      sig { returns(T.nilable(Integer)) }
      attr_reader :ownership_percentage

      sig { params(ownership_percentage: Integer).void }
      attr_writer :ownership_percentage

      # Phone number in E.164 format.
      sig { returns(T.nilable(String)) }
      attr_reader :phone

      sig { params(phone: String).void }
      attr_writer :phone

      # Place of birth for an associated person.
      sig { returns(T.nilable(Privy::KYBPlaceOfBirth)) }
      attr_reader :place_of_birth

      sig { params(place_of_birth: Privy::KYBPlaceOfBirth::OrHash).void }
      attr_writer :place_of_birth

      # Date the relationship with the business was established, in YYYY-MM-DD format.
      sig { returns(T.nilable(String)) }
      attr_reader :relationship_established_at

      sig { params(relationship_established_at: String).void }
      attr_writer :relationship_established_at

      # Job title. Required when has_control is true.
      sig { returns(T.nilable(String)) }
      attr_reader :title

      sig { params(title: String).void }
      attr_writer :title

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

      # A beneficial owner, control person, or signer associated with the business. At
      # least one of has_ownership, has_control, or is_signer must be true, and the
      # business must have at least one control person and one signer.
      sig do
        params(
          date_of_birth: String,
          email: String,
          first_name: String,
          has_control: T::Boolean,
          has_ownership: T::Boolean,
          identifying_information:
            T::Array[Privy::VerificationDocument::OrHash],
          is_signer: T::Boolean,
          last_name: String,
          residential_address: Privy::VerificationAddress::OrHash,
          documents: T::Array[Privy::KYBIndividualDocument::OrHash],
          is_director: T::Boolean,
          middle_name: String,
          nationalities: T::Array[String],
          ownership_percentage: Integer,
          phone: String,
          place_of_birth: Privy::KYBPlaceOfBirth::OrHash,
          relationship_established_at: String,
          title: String,
          transliterated_first_name: String,
          transliterated_last_name: String,
          transliterated_middle_name: String,
          transliterated_residential_address: Privy::VerificationAddress::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Date of birth in YYYY-MM-DD format. Must be 18 years or older.
        date_of_birth:,
        # Email address.
        email:,
        # Legal first name.
        first_name:,
        # Whether this person is a control person.
        has_control:,
        # Whether this person owns 25% or more of the business.
        has_ownership:,
        # Identifying documents for this person.
        identifying_information:,
        # Whether this person is a signer for the business.
        is_signer:,
        # Legal last name.
        last_name:,
        # A postal address used in KYC and KYB data submission.
        residential_address:,
        # Supporting documents for this person, such as proof of address.
        documents: nil,
        # Whether this person is a director.
        is_director: nil,
        # Legal middle name.
        middle_name: nil,
        # ISO 3166-1 alpha-3 codes for all nationalities held.
        nationalities: nil,
        # Percentage of the business this person owns.
        ownership_percentage: nil,
        # Phone number in E.164 format.
        phone: nil,
        # Place of birth for an associated person.
        place_of_birth: nil,
        # Date the relationship with the business was established, in YYYY-MM-DD format.
        relationship_established_at: nil,
        # Job title. Required when has_control is true.
        title: nil,
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
            has_control: T::Boolean,
            has_ownership: T::Boolean,
            identifying_information: T::Array[Privy::VerificationDocument],
            is_signer: T::Boolean,
            last_name: String,
            residential_address: Privy::VerificationAddress,
            documents: T::Array[Privy::KYBIndividualDocument],
            is_director: T::Boolean,
            middle_name: String,
            nationalities: T::Array[String],
            ownership_percentage: Integer,
            phone: String,
            place_of_birth: Privy::KYBPlaceOfBirth,
            relationship_established_at: String,
            title: String,
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
