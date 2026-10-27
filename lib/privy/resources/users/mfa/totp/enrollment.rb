# frozen_string_literal: true

module Privy
  module Resources
    class Users
      class Mfa
        class Totp
          # Operations related to user MFA
          class Enrollment
            # Some parameter documentations has been truncated, see
            # {Privy::Models::Users::Mfa::Totp::EnrollmentInitParams} for more details.
            #
            # Creates a TOTP secret for the user to add to an authenticator app.
            #
            # @overload init(user_id, privy_user_token:, privy_mfa_token: nil, request_options: {})
            #
            # @param user_id [String]
            #
            # @param privy_user_token [String] Access token or custom authentication JWT for the user the request acts on.
            #
            # @param privy_mfa_token [String] MFA token from a completed MFA verification, required on MFA-protected requests
            #
            # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Privy::Models::Users::TotpMfaEnrollmentInitResponse]
            #
            # @see Privy::Models::Users::Mfa::Totp::EnrollmentInitParams
            def init(user_id, params)
              parsed, options = Privy::Users::Mfa::Totp::EnrollmentInitParams.dump_request(params)
              @client.request(
                method: :post,
                path: ["v1/users/%1$s/mfa/totp/enrollment/init", user_id],
                headers: parsed.transform_keys(
                  privy_user_token: "privy-user-token",
                  privy_mfa_token: "privy-mfa-token"
                ),
                model: Privy::Users::TotpMfaEnrollmentInitResponse,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {Privy::Models::Users::Mfa::Totp::EnrollmentVerifyParams} for more details.
            #
            # Enrolls the authenticator from init using a code it generated.
            #
            # @overload verify(user_id, code:, privy_user_token:, request_options: {})
            #
            # @param user_id [String] Path param
            #
            # @param code [String] Body param
            #
            # @param privy_user_token [String] Header param: Access token or custom authentication JWT for the user the request
            #
            # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Privy::Models::Users::MfaVerificationResponse]
            #
            # @see Privy::Models::Users::Mfa::Totp::EnrollmentVerifyParams
            def verify(user_id, params)
              parsed, options = Privy::Users::Mfa::Totp::EnrollmentVerifyParams.dump_request(params)
              header_params = {privy_user_token: "privy-user-token"}
              @client.request(
                method: :post,
                path: ["v1/users/%1$s/mfa/totp/enrollment/verify", user_id],
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
