# typed: strong

module Privy
  module Models
    class PasskeyAuthenticatorEnrollmentResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::PasskeyAuthenticatorEnrollmentResponse,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # Client extension results returned by the WebAuthn authenticator.
      sig { returns(Privy::PasskeyClientExtensionResults) }
      attr_reader :client_extension_results

      sig do
        params(
          client_extension_results: Privy::PasskeyClientExtensionResults::OrHash
        ).void
      end
      attr_writer :client_extension_results

      sig { returns(String) }
      attr_accessor :raw_id

      # The authenticator attestation response from a WebAuthn registration ceremony.
      sig { returns(Privy::PasskeyAttestationResponse) }
      attr_reader :response

      sig { params(response: Privy::PasskeyAttestationResponse::OrHash).void }
      attr_writer :response

      sig do
        returns(Privy::PasskeyAuthenticatorEnrollmentResponse::Type::OrSymbol)
      end
      attr_accessor :type

      sig { returns(T.nilable(String)) }
      attr_reader :authenticator_attachment

      sig { params(authenticator_attachment: String).void }
      attr_writer :authenticator_attachment

      # WebAuthn registration response as defined by the Web Authentication
      # specification.
      sig do
        params(
          id: String,
          client_extension_results:
            Privy::PasskeyClientExtensionResults::OrHash,
          raw_id: String,
          response: Privy::PasskeyAttestationResponse::OrHash,
          type: Privy::PasskeyAuthenticatorEnrollmentResponse::Type::OrSymbol,
          authenticator_attachment: String
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Client extension results returned by the WebAuthn authenticator.
        client_extension_results:,
        raw_id:,
        # The authenticator attestation response from a WebAuthn registration ceremony.
        response:,
        type:,
        authenticator_attachment: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            client_extension_results: Privy::PasskeyClientExtensionResults,
            raw_id: String,
            response: Privy::PasskeyAttestationResponse,
            type: Privy::PasskeyAuthenticatorEnrollmentResponse::Type::OrSymbol,
            authenticator_attachment: String
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::PasskeyAuthenticatorEnrollmentResponse::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PUBLIC_KEY =
          T.let(
            :"public-key",
            Privy::PasskeyAuthenticatorEnrollmentResponse::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::PasskeyAuthenticatorEnrollmentResponse::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
