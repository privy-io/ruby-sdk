# frozen_string_literal: true

module Privy
  module Models
    class PasskeyClientExtensionResults < Privy::Internal::Type::BaseModel
      # @!attribute app_id
      #
      #   @return [Boolean, nil]
      optional :app_id, Privy::Internal::Type::Boolean

      # @!attribute cred_props
      #   The result of the WebAuthn credProps extension.
      #
      #   @return [Privy::Models::PasskeyCredPropsResult, nil]
      optional :cred_props, -> { Privy::PasskeyCredPropsResult }

      # @!attribute hmac_create_secret
      #
      #   @return [Boolean, nil]
      optional :hmac_create_secret, Privy::Internal::Type::Boolean

      # @!method initialize(app_id: nil, cred_props: nil, hmac_create_secret: nil)
      #   Client extension results returned by the WebAuthn authenticator.
      #
      #   @param app_id [Boolean]
      #
      #   @param cred_props [Privy::Models::PasskeyCredPropsResult] The result of the WebAuthn credProps extension.
      #
      #   @param hmac_create_secret [Boolean]
    end
  end
end
