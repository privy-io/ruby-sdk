# frozen_string_literal: true

module Privy
  module Resources
    class Users
      class Mfa
        class Totp
          # Operations related to user MFA
          class Verification
            # Some parameter documentations has been truncated, see
            # {Privy::Models::Users::Mfa::Totp::VerificationVerifyParams} for more details.
            #
            # Verifies a code from the enrolled authenticator.
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
            # @see Privy::Models::Users::Mfa::Totp::VerificationVerifyParams
            def verify(user_id, params)
              parsed, options = Privy::Users::Mfa::Totp::VerificationVerifyParams.dump_request(params)
              header_params = {privy_user_token: "privy-user-token"}
              @client.request(
                method: :post,
                path: ["v1/users/%1$s/mfa/totp/verification/verify", user_id],
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
