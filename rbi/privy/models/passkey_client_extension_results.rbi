# typed: strong

module Privy
  module Models
    class PasskeyClientExtensionResults < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::PasskeyClientExtensionResults, Privy::Internal::AnyHash)
        end

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :app_id

      sig { params(app_id: T::Boolean).void }
      attr_writer :app_id

      # The result of the WebAuthn credProps extension.
      sig { returns(T.nilable(Privy::PasskeyCredPropsResult)) }
      attr_reader :cred_props

      sig { params(cred_props: Privy::PasskeyCredPropsResult::OrHash).void }
      attr_writer :cred_props

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :hmac_create_secret

      sig { params(hmac_create_secret: T::Boolean).void }
      attr_writer :hmac_create_secret

      # Client extension results returned by the WebAuthn authenticator.
      sig do
        params(
          app_id: T::Boolean,
          cred_props: Privy::PasskeyCredPropsResult::OrHash,
          hmac_create_secret: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        app_id: nil,
        # The result of the WebAuthn credProps extension.
        cred_props: nil,
        hmac_create_secret: nil
      )
      end

      sig do
        override.returns(
          {
            app_id: T::Boolean,
            cred_props: Privy::PasskeyCredPropsResult,
            hmac_create_secret: T::Boolean
          }
        )
      end
      def to_hash
      end
    end
  end
end
