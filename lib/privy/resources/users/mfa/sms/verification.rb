# frozen_string_literal: true

module Privy
  module Resources
    class Users
      class Mfa
        class SMS
          # Operations related to user MFA
          class Verification
            # Sends an SMS MFA verification code to the enrolled phone number.
            #
            # @overload init(user_id, privy_user_token:, request_options: {})
            #
            # @param user_id [String]
            #
            # @param privy_user_token [String] Access token or custom authentication JWT for the user the request acts on.
            #
            # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Privy::Models::SuccessResponse]
            #
            # @see Privy::Models::Users::Mfa::SMS::VerificationInitParams
            def init(user_id, params)
              parsed, options = Privy::Users::Mfa::SMS::VerificationInitParams.dump_request(params)
              @client.request(
                method: :post,
                path: ["v1/users/%1$s/mfa/sms/verification/init", user_id],
                headers: parsed.transform_keys(privy_user_token: "privy-user-token"),
                model: Privy::SuccessResponse,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {Privy::Models::Users::Mfa::SMS::VerificationVerifyParams} for more details.
            #
            # Verifies the code sent to the enrolled phone number.
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
            # @see Privy::Models::Users::Mfa::SMS::VerificationVerifyParams
            def verify(user_id, params)
              parsed, options = Privy::Users::Mfa::SMS::VerificationVerifyParams.dump_request(params)
              header_params = {privy_user_token: "privy-user-token"}
              @client.request(
                method: :post,
                path: ["v1/users/%1$s/mfa/sms/verification/verify", user_id],
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
