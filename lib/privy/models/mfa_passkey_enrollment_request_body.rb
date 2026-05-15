# frozen_string_literal: true

module Privy
  module Models
    class MfaPasskeyEnrollmentRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute credential_ids
      #
      #   @return [Array<String>]
      required :credential_ids, Privy::Internal::Type::ArrayOf[String]

      # @!attribute remove_for_login
      #
      #   @return [Boolean, nil]
      optional :remove_for_login, Privy::Internal::Type::Boolean

      # @!method initialize(credential_ids:, remove_for_login: nil)
      #   The request body for enrolling a passkey MFA flow.
      #
      #   @param credential_ids [Array<String>]
      #   @param remove_for_login [Boolean]
    end
  end
end
