# typed: strong

module Privy
  module Models
    class KYCSubmitData < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::KYCSubmitData, Privy::Internal::AnyHash) }

      # Date of birth in YYYY-MM-DD format.
      sig { returns(String) }
      attr_accessor :date_of_birth

      # Legal first name.
      sig { returns(String) }
      attr_accessor :first_name

      # Identifying documents.
      sig { returns(T::Array[Privy::KYCIdentifyingDocument]) }
      attr_accessor :identifying_information

      # Legal last name.
      sig { returns(String) }
      attr_accessor :last_name

      # Residential address for KYC data submission.
      sig { returns(Privy::KYCResidentialAddress) }
      attr_reader :residential_address

      sig do
        params(residential_address: Privy::KYCResidentialAddress::OrHash).void
      end
      attr_writer :residential_address

      # Email address.
      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { params(email: String).void }
      attr_writer :email

      # Phone number in E.164 format.
      sig { returns(T.nilable(String)) }
      attr_reader :phone

      sig { params(phone: String).void }
      attr_writer :phone

      # KYC verification data for headless submission.
      sig do
        params(
          date_of_birth: String,
          first_name: String,
          identifying_information:
            T::Array[Privy::KYCIdentifyingDocument::OrHash],
          last_name: String,
          residential_address: Privy::KYCResidentialAddress::OrHash,
          email: String,
          phone: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Date of birth in YYYY-MM-DD format.
        date_of_birth:,
        # Legal first name.
        first_name:,
        # Identifying documents.
        identifying_information:,
        # Legal last name.
        last_name:,
        # Residential address for KYC data submission.
        residential_address:,
        # Email address.
        email: nil,
        # Phone number in E.164 format.
        phone: nil
      )
      end

      sig do
        override.returns(
          {
            date_of_birth: String,
            first_name: String,
            identifying_information: T::Array[Privy::KYCIdentifyingDocument],
            last_name: String,
            residential_address: Privy::KYCResidentialAddress,
            email: String,
            phone: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
