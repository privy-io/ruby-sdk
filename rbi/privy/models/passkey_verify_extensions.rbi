# typed: strong

module Privy
  module Models
    class PasskeyVerifyExtensions < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::PasskeyVerifyExtensions, Privy::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_reader :app_id

      sig { params(app_id: String).void }
      attr_writer :app_id

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :cred_props

      sig { params(cred_props: T::Boolean).void }
      attr_writer :cred_props

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :hmac_create_secret

      sig { params(hmac_create_secret: T::Boolean).void }
      attr_writer :hmac_create_secret

      # Extensions for a WebAuthn authentication ceremony.
      sig do
        params(
          app_id: String,
          cred_props: T::Boolean,
          hmac_create_secret: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(app_id: nil, cred_props: nil, hmac_create_secret: nil)
      end

      sig do
        override.returns(
          {
            app_id: String,
            cred_props: T::Boolean,
            hmac_create_secret: T::Boolean
          }
        )
      end
      def to_hash
      end
    end
  end
end
