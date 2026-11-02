# typed: strong

module Privy
  module Resources
    class Users
      class Mfa
        class Email
          # Operations related to user MFA
          class Verification
            # Sends an email MFA verification code to the enrolled email address.
            sig do
              params(
                user_id: String,
                user_jwt: String,
                request_options: Privy::RequestOptions::OrHash
              ).returns(Privy::SuccessResponse)
            end
            def init(
              user_id,
              # Access token or custom authentication JWT for the user the request acts on.
              user_jwt:,
              request_options: {}
            )
            end

            # Verifies the code sent to the enrolled email address.
            sig do
              params(
                user_id: String,
                code: String,
                user_jwt: String,
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
