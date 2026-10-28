# frozen_string_literal: true

module Privy
  module Resources
    class Users
      class Mfa
        class Passkey
          # Operations related to user MFA
          class Enrollment
            # Some parameter documentations has been truncated, see
            # {Privy::Models::Users::Mfa::Passkey::EnrollmentInitParams} for more details.
            #
            # Returns WebAuthn registration options for a new MFA passkey.
            #
            # @overload init(user_id, relying_party:, privy_user_token:, privy_mfa_token: nil, request_options: {})
            #
            # @param user_id [String] Path param
            #
            # @param relying_party [String] Body param: Origin where the authenticator runs, such as https://app.example.com
            #
            # @param privy_user_token [String] Header param: Access token or custom authentication JWT for the user the request
            #
            # @param privy_mfa_token [String] Header param: MFA token from a completed MFA verification, required on MFA-prote
            #
            # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Privy::Models::Users::PasskeyMfaEnrollmentInitResponse]
            #
            # @see Privy::Models::Users::Mfa::Passkey::EnrollmentInitParams
            def init(user_id, params)
              parsed, options = Privy::Users::Mfa::Passkey::EnrollmentInitParams.dump_request(params)
              header_params = {privy_user_token: "privy-user-token", privy_mfa_token: "privy-mfa-token"}
              @client.request(
                method: :post,
                path: ["v1/users/%1$s/mfa/passkey/enrollment/init", user_id],
                headers: parsed.slice(*header_params.keys).transform_keys(header_params),
                body: parsed.except(*header_params.keys),
                model: Privy::Users::PasskeyMfaEnrollmentInitResponse,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {Privy::Models::Users::Mfa::Passkey::EnrollmentVerifyParams} for more details.
            #
            # Enrolls a passkey in MFA using the WebAuthn registration response.
            #
            # @overload verify(user_id, credential:, privy_user_token:, request_options: {})
            #
            # @param user_id [String] Path param
            #
            # @param credential [Privy::Models::Users::MfaPasskeyAuthenticatorEnrollmentResponse] Body param: WebAuthn registration response as defined by the Web Authentication
            #
            # @param privy_user_token [String] Header param: Access token or custom authentication JWT for the user the request
            #
            # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Privy::Models::Users::MfaVerificationResponse]
            #
            # @see Privy::Models::Users::Mfa::Passkey::EnrollmentVerifyParams
            def verify(user_id, params)
              parsed, options = Privy::Users::Mfa::Passkey::EnrollmentVerifyParams.dump_request(params)
              header_params = {privy_user_token: "privy-user-token"}
              @client.request(
                method: :post,
                path: ["v1/users/%1$s/mfa/passkey/enrollment/verify", user_id],
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
