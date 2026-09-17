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

      # KYC verification data for headless submission.
      sig do
        params(
          date_of_birth: String,
          email: String,
          first_name: String,
          identifying_information:
            T::Array[Privy::VerificationDocument::OrHash],
          last_name: String,
          phone: String,
          residential_address: Privy::VerificationAddress::OrHash
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
        # Phone number in E.164 format.
        phone: nil,
        # A postal address used in KYC and KYB data submission.
        residential_address: nil
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
            phone: String,
            residential_address: Privy::VerificationAddress
          }
        )
      end
      def to_hash
      end
    end
  end
end
