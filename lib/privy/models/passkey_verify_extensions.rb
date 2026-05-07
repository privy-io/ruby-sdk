# frozen_string_literal: true

module Privy
  module Models
    class PasskeyVerifyExtensions < Privy::Internal::Type::BaseModel
      # @!attribute app_id
      #
      #   @return [String, nil]
      optional :app_id, String

      # @!attribute cred_props
      #
      #   @return [Boolean, nil]
      optional :cred_props, Privy::Internal::Type::Boolean

      # @!attribute hmac_create_secret
      #
      #   @return [Boolean, nil]
      optional :hmac_create_secret, Privy::Internal::Type::Boolean

      # @!method initialize(app_id: nil, cred_props: nil, hmac_create_secret: nil)
      #   Extensions for a WebAuthn authentication ceremony.
      #
      #   @param app_id [String]
      #   @param cred_props [Boolean]
      #   @param hmac_create_secret [Boolean]
    end
  end
end
