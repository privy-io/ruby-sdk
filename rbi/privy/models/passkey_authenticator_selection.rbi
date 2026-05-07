# typed: strong

module Privy
  module Models
    class PasskeyAuthenticatorSelection < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::PasskeyAuthenticatorSelection, Privy::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_reader :authenticator_attachment

      sig { params(authenticator_attachment: String).void }
      attr_writer :authenticator_attachment

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :require_resident_key

      sig { params(require_resident_key: T::Boolean).void }
      attr_writer :require_resident_key

      sig { returns(T.nilable(String)) }
      attr_reader :resident_key

      sig { params(resident_key: String).void }
      attr_writer :resident_key

      sig { returns(T.nilable(String)) }
      attr_reader :user_verification

      sig { params(user_verification: String).void }
      attr_writer :user_verification

      # Authenticator selection criteria for a WebAuthn registration ceremony.
      sig do
        params(
          authenticator_attachment: String,
          require_resident_key: T::Boolean,
          resident_key: String,
          user_verification: String
        ).returns(T.attached_class)
      end
      def self.new(
        authenticator_attachment: nil,
        require_resident_key: nil,
        resident_key: nil,
        user_verification: nil
      )
      end

      sig do
        override.returns(
          {
            authenticator_attachment: String,
            require_resident_key: T::Boolean,
            resident_key: String,
            user_verification: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
