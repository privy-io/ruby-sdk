# typed: strong

module Privy
  module Models
    module Users
      class MfaPasskeyAuthenticatorVerifyResponse < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::Users::MfaPasskeyAuthenticatorVerifyResponse,
              Privy::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # Client extension results returned by the WebAuthn authenticator.
        sig { returns(Privy::Users::MfaPasskeyClientExtensionResults) }
        attr_reader :client_extension_results

        sig do
          params(
            client_extension_results:
              Privy::Users::MfaPasskeyClientExtensionResults::OrHash
          ).void
        end
        attr_writer :client_extension_results

        sig { returns(String) }
        attr_accessor :raw_id

        # The authenticator assertion response from a WebAuthn authentication ceremony.
        sig { returns(Privy::Users::MfaPasskeyAssertionResponse) }
        attr_reader :response

        sig do
          params(
            response: Privy::Users::MfaPasskeyAssertionResponse::OrHash
          ).void
        end
        attr_writer :response

        sig do
          returns(
            Privy::Users::MfaPasskeyAuthenticatorVerifyResponse::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig { returns(T.nilable(String)) }
        attr_reader :authenticator_attachment

        sig { params(authenticator_attachment: String).void }
        attr_writer :authenticator_attachment

        # WebAuthn authentication response as defined by the Web Authentication
        # specification.
        sig do
          params(
            id: String,
            client_extension_results:
              Privy::Users::MfaPasskeyClientExtensionResults::OrHash,
            raw_id: String,
            response: Privy::Users::MfaPasskeyAssertionResponse::OrHash,
            type:
              Privy::Users::MfaPasskeyAuthenticatorVerifyResponse::Type::OrSymbol,
            authenticator_attachment: String
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # Client extension results returned by the WebAuthn authenticator.
          client_extension_results:,
          raw_id:,
          # The authenticator assertion response from a WebAuthn authentication ceremony.
          response:,
          type:,
          authenticator_attachment: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              client_extension_results:
                Privy::Users::MfaPasskeyClientExtensionResults,
              raw_id: String,
              response: Privy::Users::MfaPasskeyAssertionResponse,
              type:
                Privy::Users::MfaPasskeyAuthenticatorVerifyResponse::Type::OrSymbol,
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
              T.all(
                Symbol,
                Privy::Users::MfaPasskeyAuthenticatorVerifyResponse::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PUBLIC_KEY =
            T.let(
              :"public-key",
              Privy::Users::MfaPasskeyAuthenticatorVerifyResponse::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Privy::Users::MfaPasskeyAuthenticatorVerifyResponse::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
