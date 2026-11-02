# typed: strong

module Privy
  module Models
    module Users
      module Mfa
        module Email
          class EnrollmentInitParams < Privy::Models::Users::EmailMfaEnrollmentInitRequestBody
            extend Privy::Internal::Type::RequestParameters::Converter
            include Privy::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  Privy::Users::Mfa::Email::EnrollmentInitParams,
                  Privy::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :user_id

            # Access token or custom authentication JWT for the user the request acts on.
            sig { returns(String) }
            attr_accessor :user_jwt

            # MFA token from a completed MFA verification, required on MFA-protected requests
            # for users with MFA enrolled.
            sig { returns(T.nilable(String)) }
            attr_reader :mfa_token

            sig { params(mfa_token: String).void }
            attr_writer :mfa_token

            sig do
              params(
                user_id: String,
                user_jwt: String,
                mfa_token: String,
                request_options: Privy::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              user_id:,
              # Access token or custom authentication JWT for the user the request acts on.
              user_jwt:,
              # MFA token from a completed MFA verification, required on MFA-protected requests
              # for users with MFA enrolled.
              mfa_token: nil,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  user_id: String,
                  user_jwt: String,
                  mfa_token: String,
                  request_options: Privy::RequestOptions
                }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
