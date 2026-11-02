# frozen_string_literal: true

module Privy
  module Resources
    class Users
      class Mfa
        class Email
          # Operations related to user MFA
          class Enrollment
            # Some parameter documentations has been truncated, see
            # {Privy::Models::Users::Mfa::Email::EnrollmentInitParams} for more details.
            #
            # Sends an email MFA enrollment code to an email address.
            #
            # @overload init(user_id, email_address:, user_jwt:, mfa_token: nil, request_options: {})
            #
            # @param user_id [String] Path param
            #
            # @param email_address [String] Body param
            #
            # @param user_jwt [String] Header param: Access token or custom authentication JWT for the user the request
            #
            # @param mfa_token [String] Header param: MFA token from a completed MFA verification, required on MFA-prote
            #
            # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Privy::Models::SuccessResponse]
            #
            # @see Privy::Models::Users::Mfa::Email::EnrollmentInitParams
            def init(user_id, params)
              parsed, options = Privy::Users::Mfa::Email::EnrollmentInitParams.dump_request(params)
              header_params = {user_jwt: "privy-user-token", mfa_token: "privy-mfa-token"}
              @client.request(
                method: :post,
                path: ["v1/users/%1$s/mfa/email/enrollment/init", user_id],
                headers: parsed.slice(*header_params.keys).transform_keys(header_params),
                body: parsed.except(*header_params.keys),
                model: Privy::SuccessResponse,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {Privy::Models::Users::Mfa::Email::EnrollmentVerifyParams} for more details.
            #
            # Enrolls the email address from init using the code sent to it.
            #
            # @overload verify(user_id, code:, user_jwt:, request_options: {})
            #
            # @param user_id [String] Path param
            #
            # @param code [String] Body param
            #
            # @param user_jwt [String] Header param: Access token or custom authentication JWT for the user the request
            #
            # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Privy::Models::Users::MfaVerificationResponse]
            #
            # @see Privy::Models::Users::Mfa::Email::EnrollmentVerifyParams
            def verify(user_id, params)
              parsed, options = Privy::Users::Mfa::Email::EnrollmentVerifyParams.dump_request(params)
              header_params = {user_jwt: "privy-user-token"}
              @client.request(
                method: :post,
                path: ["v1/users/%1$s/mfa/email/enrollment/verify", user_id],
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
