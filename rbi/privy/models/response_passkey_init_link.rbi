# typed: strong

module Privy
  module Models
    class ResponsePasskeyInitLink < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::ResponsePasskeyInitLink, Privy::Internal::AnyHash)
        end

      # WebAuthn registration options as defined by the Web Authentication
      # specification.
      sig { returns(Privy::PasskeyAuthenticatorEnrollmentOptions) }
      attr_reader :options

      sig do
        params(
          options: Privy::PasskeyAuthenticatorEnrollmentOptions::OrHash
        ).void
      end
      attr_writer :options

      sig { returns(T.nilable(String)) }
      attr_reader :relying_party

      sig { params(relying_party: String).void }
      attr_writer :relying_party

      # Response for initiating a passkey link ceremony.
      sig do
        params(
          options: Privy::PasskeyAuthenticatorEnrollmentOptions::OrHash,
          relying_party: String
        ).returns(T.attached_class)
      end
      def self.new(
        # WebAuthn registration options as defined by the Web Authentication
        # specification.
        options:,
        relying_party: nil
      )
      end

      sig do
        override.returns(
          {
            options: Privy::PasskeyAuthenticatorEnrollmentOptions,
            relying_party: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
