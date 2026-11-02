# frozen_string_literal: true

module Privy
  module Resources
    class Users
      class Mfa
        class Passkey
          # Operations related to user MFA
          class Verification
            # Some parameter documentations has been truncated, see
            # {Privy::Models::Users::Mfa::Passkey::VerificationInitParams} for more details.
            #
            # Returns WebAuthn authentication options for the enrolled MFA passkeys.
            #
            # @overload init(user_id, relying_party:, user_jwt:, request_options: {})
            #
            # @param user_id [String] Path param
            #
            # @param relying_party [String] Body param: Origin where the authenticator runs, such as https://app.example.com
            #
            # @param user_jwt [String] Header param: Access token or custom authentication JWT for the user the request
            #
            # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Privy::Models::Users::PasskeyMfaVerificationInitResponse]
            #
            # @see Privy::Models::Users::Mfa::Passkey::VerificationInitParams
            def init(user_id, params)
              parsed, options = Privy::Users::Mfa::Passkey::VerificationInitParams.dump_request(params)
              header_params = {user_jwt: "privy-user-token"}
              @client.request(
                method: :post,
                path: ["v1/users/%1$s/mfa/passkey/verification/init", user_id],
                headers: parsed.slice(*header_params.keys).transform_keys(header_params),
                body: parsed.except(*header_params.keys),
                model: Privy::Users::PasskeyMfaVerificationInitResponse,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {Privy::Models::Users::Mfa::Passkey::VerificationVerifyParams} for more details.
            #
            # Verifies the WebAuthn authentication response from an MFA passkey.
            #
            # @overload verify(user_id, credential:, user_jwt:, request_options: {})
            #
            # @param user_id [String] Path param
            #
            # @param credential [Privy::Models::Users::MfaPasskeyAuthenticatorVerifyResponse] Body param: WebAuthn authentication response as defined by the Web Authenticatio
            #
            # @param user_jwt [String] Header param: Access token or custom authentication JWT for the user the request
            #
            # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Privy::Models::Users::MfaVerificationResponse]
            #
            # @see Privy::Models::Users::Mfa::Passkey::VerificationVerifyParams
            def verify(user_id, params)
              parsed, options = Privy::Users::Mfa::Passkey::VerificationVerifyParams.dump_request(params)
              header_params = {user_jwt: "privy-user-token"}
              @client.request(
                method: :post,
                path: ["v1/users/%1$s/mfa/passkey/verification/verify", user_id],
                headers: parsed.slice(*header_params.keys).transform_keys(header_params),
                body: parsed.except(*header_params.keys),
                model: Privy::Users::MfaVerificationResponse,
                options: options
              )
            end

            # @api private
            #
            # @param client [Privy::Client]
            def initialize(client:)
              @client = client
            end
          end
        end
      end
    end
  end
end
