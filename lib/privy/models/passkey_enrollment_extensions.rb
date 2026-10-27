# frozen_string_literal: true

module Privy
  module Models
    class PasskeyEnrollmentExtensions < Privy::Internal::Type::BaseModel
      # @!attribute app_id
      #
      #   @return [String, nil]
      optional :app_id, String

      # @!attribute cred_props
      #   The result of the WebAuthn credProps extension.
      #
      #   @return [Privy::Models::Users::MfaPasskeyCredPropsResult, nil]
      optional :cred_props, -> { Privy::Users::MfaPasskeyCredPropsResult }

      # @!attribute hmac_create_secret
      #
      #   @return [Boolean, nil]
      optional :hmac_create_secret, Privy::Internal::Type::Boolean

      # @!method initialize(app_id: nil, cred_props: nil, hmac_create_secret: nil)
      #   Extensions for a WebAuthn registration ceremony.
      #
      #   @param app_id [String]
      #
      #   @param cred_props [Privy::Models::Users::MfaPasskeyCredPropsResult] The result of the WebAuthn credProps extension.
      #
      #   @param hmac_create_secret [Boolean]
    end
  end
end
