# typed: strong

module Privy
  module Models
    class PasskeyAuthenticateInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::PasskeyAuthenticateInput, Privy::Internal::AnyHash)
        end

      # WebAuthn authentication response as defined by the Web Authentication
      # specification.
      sig { returns(Privy::PasskeyAuthenticatorVerifyResponse) }
      attr_reader :authenticator_response

      sig do
        params(
          authenticator_response:
            Privy::PasskeyAuthenticatorVerifyResponse::OrHash
        ).void
      end
      attr_writer :authenticator_response

      sig { returns(String) }
      attr_accessor :challenge

      sig { returns(T.nilable(String)) }
      attr_reader :relying_party

      sig { params(relying_party: String).void }
      attr_writer :relying_party

      # Input for authenticating with a passkey.
      sig do
        params(
          authenticator_response:
            Privy::PasskeyAuthenticatorVerifyResponse::OrHash,
          challenge: String,
          relying_party: String
        ).returns(T.attached_class)
      end
      def self.new(
        # WebAuthn authentication response as defined by the Web Authentication
        # specification.
        authenticator_response:,
        challenge:,
        relying_party: nil
      )
      end

      sig do
        override.returns(
          {
            authenticator_response: Privy::PasskeyAuthenticatorVerifyResponse,
            challenge: String,
            relying_party: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
