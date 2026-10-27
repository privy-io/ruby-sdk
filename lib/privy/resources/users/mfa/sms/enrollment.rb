# frozen_string_literal: true

module Privy
  module Resources
    class Users
      class Mfa
        class SMS
          # Operations related to user MFA
          class Enrollment
            # Some parameter documentations has been truncated, see
            # {Privy::Models::Users::Mfa::SMS::EnrollmentInitParams} for more details.
            #
            # Sends an SMS MFA enrollment code to a phone number.
            #
            # @overload init(user_id, phone_number:, privy_user_token:, privy_mfa_token: nil, request_options: {})
            #
            # @param user_id [String] Path param
            #
            # @param phone_number [String] Body param
            #
            # @param privy_user_token [String] Header param: Access token or custom authentication JWT for the user the request
            #
            # @param privy_mfa_token [String] Header param: MFA token from a completed MFA verification, required on MFA-prote
            #
            # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Privy::Models::SuccessResponse]
            #
            # @see Privy::Models::Users::Mfa::SMS::EnrollmentInitParams
            def init(user_id, params)
              parsed, options = Privy::Users::Mfa::SMS::EnrollmentInitParams.dump_request(params)
              header_params = {privy_user_token: "privy-user-token", privy_mfa_token: "privy-mfa-token"}
              @client.request(
                method: :post,
                path: ["v1/users/%1$s/mfa/sms/enrollment/init", user_id],
                headers: parsed.slice(*header_params.keys).transform_keys(header_params),
                body: parsed.except(*header_params.keys),
                model: Privy::SuccessResponse,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {Privy::Models::Users::Mfa::SMS::EnrollmentVerifyParams} for more details.
            #
            # Enrolls the phone number from init using the code sent to it.
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
            # @see Privy::Models::Users::Mfa::SMS::EnrollmentVerifyParams
            def verify(user_id, params)
              parsed, options = Privy::Users::Mfa::SMS::EnrollmentVerifyParams.dump_request(params)
              header_params = {privy_user_token: "privy-user-token"}
              @client.request(
                method: :post,
                path: ["v1/users/%1$s/mfa/sms/enrollment/verify", user_id],
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
