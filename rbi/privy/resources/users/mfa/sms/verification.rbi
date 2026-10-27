# typed: strong

module Privy
  module Resources
    class Users
      class Mfa
        class SMS
          # Operations related to user MFA
          class Verification
            # Sends an SMS MFA verification code to the enrolled phone number.
            sig do
              params(
                user_id: String,
                privy_user_token: String,
                request_options: Privy::RequestOptions::OrHash
              ).returns(Privy::SuccessResponse)
            end
            def init(
              user_id,
              # Access token or custom authentication JWT for the user the request acts on.
              privy_user_token:,
              request_options: {}
            )
            end

            # Verifies the code sent to the enrolled phone number.
            sig do
              params(
                user_id: String,
                code: String,
                privy_user_token: String,
                request_options: Privy::RequestOptions::OrHash
              ).returns(Privy::Users::MfaVerificationResponse)
            end
            def verify(
              # Path param
              user_id,
              # Body param
              code:,
              # Header param: Access token or custom authentication JWT for the user the request
              # acts on.
              privy_user_token:,
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
