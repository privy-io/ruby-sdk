# typed: strong

module Privy
  module Resources
    class Users
      class Mfa
        class Passkey
          # Operations related to user MFA
          class Verification
            # Returns WebAuthn authentication options for the enrolled MFA passkeys.
            sig do
              params(
                user_id: String,
                relying_party: String,
                user_jwt: String,
                request_options: Privy::RequestOptions::OrHash
              ).returns(Privy::Users::PasskeyMfaVerificationInitResponse)
            end
            def init(
              # Path param
              user_id,
              # Body param: Origin where the authenticator runs, such as
              # https://app.example.com.
              relying_party:,
              # Header param: Access token or custom authentication JWT for the user the request
              # acts on.
              user_jwt:,
              request_options: {}
            )
            end

            # Verifies the WebAuthn authentication response from an MFA passkey.
            sig do
              params(
                user_id: String,
                credential:
                  Privy::Users::MfaPasskeyAuthenticatorVerifyResponse::OrHash,
                user_jwt: String,
                request_options: Privy::RequestOptions::OrHash
              ).returns(Privy::Users::MfaVerificationResponse)
            end
            def verify(
              # Path param
              user_id,
              # Body param: WebAuthn authentication response as defined by the Web
              # Authentication specification.
              credential:,
              # Header param: Access token or custom authentication JWT for the user the request
              # acts on.
              user_jwt:,
              request_options: {}
            )
            end

            # @api private
            sig { params(client: Privy::Client).returns(T.attached_class) }
            def self.new(client:)
            end
          end
        end
      end
    end
  end
end
