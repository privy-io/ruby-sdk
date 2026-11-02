# typed: strong

module Privy
  module Resources
    class Users
      class Mfa
        class Totp
          # Operations related to user MFA
          class Enrollment
            # Creates a TOTP secret for the user to add to an authenticator app.
            sig do
              params(
                user_id: String,
                user_jwt: String,
                mfa_token: String,
                request_options: Privy::RequestOptions::OrHash
              ).returns(Privy::Users::TotpMfaEnrollmentInitResponse)
            end
            def init(
              user_id,
              # Access token or custom authentication JWT for the user the request acts on.
              user_jwt:,
              # MFA token from a completed MFA verification, required on MFA-protected requests
              # for users with MFA enrolled.
              mfa_token: nil,
              request_options: {}
            )
            end

            # Enrolls the authenticator from init using a code it generated.
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
