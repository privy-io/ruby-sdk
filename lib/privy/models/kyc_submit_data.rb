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

      # @!method initialize(date_of_birth: nil, email: nil, first_name: nil, identifying_information: nil, last_name: nil, phone: nil, residential_address: nil)
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
      #   @param phone [String] Phone number in E.164 format.
      #
      #   @param residential_address [Privy::Models::VerificationAddress] A postal address used in KYC and KYB data submission.
    end
  end
end
