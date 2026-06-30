# frozen_string_literal: true

module Privy
  module Models
    class TestAccount < Privy::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #
      #   @return [String]
      required :created_at, String

      # @!attribute email
      #
      #   @return [String]
      required :email, String

      # @!attribute otp_code
      #
      #   @return [String]
      required :otp_code, String

      # @!attribute phone_number
      #
      #   @return [String]
      required :phone_number, String

      # @!attribute updated_at
      #
      #   @return [String]
      required :updated_at, String

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!method initialize(id:, created_at:, email:, otp_code:, phone_number:, updated_at:, name: nil)
      #   A test account for an app.
      #
      #   @param id [String]
      #   @param created_at [String]
      #   @param email [String]
      #   @param otp_code [String]
      #   @param phone_number [String]
      #   @param updated_at [String]
      #   @param name [String, nil]
    end
  end
end
