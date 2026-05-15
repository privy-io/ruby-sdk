# frozen_string_literal: true

module Privy
  module Models
    class PasskeyAuthenticatorSelection < Privy::Internal::Type::BaseModel
      # @!attribute authenticator_attachment
      #
      #   @return [String, nil]
      optional :authenticator_attachment, String

      # @!attribute require_resident_key
      #
      #   @return [Boolean, nil]
      optional :require_resident_key, Privy::Internal::Type::Boolean

      # @!attribute resident_key
      #
      #   @return [String, nil]
      optional :resident_key, String

      # @!attribute user_verification
      #
      #   @return [String, nil]
      optional :user_verification, String

      # @!method initialize(authenticator_attachment: nil, require_resident_key: nil, resident_key: nil, user_verification: nil)
      #   Authenticator selection criteria for a WebAuthn registration ceremony.
      #
      #   @param authenticator_attachment [String]
      #   @param require_resident_key [Boolean]
      #   @param resident_key [String]
      #   @param user_verification [String]
    end
  end
end
