# typed: strong

module Privy
  module Models
    class PasskeyLinkInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::PasskeyLinkInput, Privy::Internal::AnyHash)
        end

      # WebAuthn registration response as defined by the Web Authentication
      # specification.
      sig { returns(Privy::PasskeyAuthenticatorEnrollmentResponse) }
      attr_reader :authenticator_response

      sig do
        params(
          authenticator_response:
            Privy::PasskeyAuthenticatorEnrollmentResponse::OrHash
        ).void
      end
      attr_writer :authenticator_response

      sig { returns(T.nilable(String)) }
      attr_reader :relying_party

      sig { params(relying_party: String).void }
      attr_writer :relying_party

      # Input for linking a passkey credential.
      sig do
        params(
          authenticator_response:
            Privy::PasskeyAuthenticatorEnrollmentResponse::OrHash,
          relying_party: String
        ).returns(T.attached_class)
      end
      def self.new(
        # WebAuthn registration response as defined by the Web Authentication
        # specification.
        authenticator_response:,
        relying_party: nil
      )
      end

      sig do
        override.returns(
          {
            authenticator_response:
              Privy::PasskeyAuthenticatorEnrollmentResponse,
            relying_party: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
