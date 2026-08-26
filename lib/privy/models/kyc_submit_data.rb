# frozen_string_literal: true

module Privy
  module Models
    class KYCSubmitData < Privy::Internal::Type::BaseModel
      # @!attribute date_of_birth
      #   Date of birth in YYYY-MM-DD format.
      #
      #   @return [String]
      required :date_of_birth, String

      # @!attribute first_name
      #   Legal first name.
      #
      #   @return [String]
      required :first_name, String

      # @!attribute identifying_information
      #   Identifying documents.
      #
      #   @return [Array<Privy::Models::KYCIdentifyingDocument>]
      required :identifying_information, -> { Privy::Internal::Type::ArrayOf[Privy::KYCIdentifyingDocument] }

      # @!attribute last_name
      #   Legal last name.
      #
      #   @return [String]
      required :last_name, String

      # @!attribute residential_address
      #   Residential address for KYC data submission.
      #
      #   @return [Privy::Models::KYCResidentialAddress]
      required :residential_address, -> { Privy::KYCResidentialAddress }

      # @!attribute email
      #   Email address.
      #
      #   @return [String, nil]
      optional :email, String

      # @!attribute phone
      #   Phone number in E.164 format.
      #
      #   @return [String, nil]
      optional :phone, String

      # @!method initialize(date_of_birth:, first_name:, identifying_information:, last_name:, residential_address:, email: nil, phone: nil)
      #   KYC verification data for headless submission.
      #
      #   @param date_of_birth [String] Date of birth in YYYY-MM-DD format.
      #
      #   @param first_name [String] Legal first name.
      #
      #   @param identifying_information [Array<Privy::Models::KYCIdentifyingDocument>] Identifying documents.
      #
      #   @param last_name [String] Legal last name.
      #
      #   @param residential_address [Privy::Models::KYCResidentialAddress] Residential address for KYC data submission.
      #
      #   @param email [String] Email address.
      #
      #   @param phone [String] Phone number in E.164 format.
    end
  end
end
