# typed: strong

module Privy
  module Models
    class PasskeyEnrollmentExtensions < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::PasskeyEnrollmentExtensions, Privy::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_reader :app_id

      sig { params(app_id: String).void }
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

      # Extensions for a WebAuthn registration ceremony.
      sig do
        params(
          app_id: String,
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
            app_id: String,
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
