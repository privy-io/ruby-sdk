# typed: strong

module Privy
  module Resources
    class Users
      class Mfa
        class SMS
          # Operations related to user MFA
          class Enrollment
            # Sends an SMS MFA enrollment code to a phone number.
            sig do
              params(
                user_id: String,
                phone_number: String,
                user_jwt: String,
                mfa_token: String,
                request_options: Privy::RequestOptions::OrHash
              ).returns(Privy::SuccessResponse)
            end
            def init(
              # Path param
              user_id,
              # Body param
              phone_number:,
              # Header param: Access token or custom authentication JWT for the user the request
              # acts on.
              user_jwt:,
              # Header param: MFA token from a completed MFA verification, required on
              # MFA-protected requests for users with MFA enrolled.
              mfa_token: nil,
              request_options: {}
            )
            end

            # Enrolls the phone number from init using the code sent to it.
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
