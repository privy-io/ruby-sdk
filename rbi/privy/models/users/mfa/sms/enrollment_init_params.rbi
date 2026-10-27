# typed: strong

module Privy
  module Models
    module Users
      module Mfa
        module SMS
          class EnrollmentInitParams < Privy::Models::Users::SMSMfaEnrollmentInitRequestBody
            extend Privy::Internal::Type::RequestParameters::Converter
            include Privy::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  Privy::Users::Mfa::SMS::EnrollmentInitParams,
                  Privy::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :user_id

            # Access token or custom authentication JWT for the user the request acts on.
            sig { returns(String) }
            attr_accessor :privy_user_token

            # MFA token from a completed MFA verification, required on MFA-protected requests
            # for users with MFA enrolled.
            sig { returns(T.nilable(String)) }
            attr_reader :privy_mfa_token

            sig { params(privy_mfa_token: String).void }
            attr_writer :privy_mfa_token

            sig do
              params(
                user_id: String,
                privy_user_token: String,
                privy_mfa_token: String,
                request_options: Privy::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              user_id:,
              # Access token or custom authentication JWT for the user the request acts on.
              privy_user_token:,
              # MFA token from a completed MFA verification, required on MFA-protected requests
              # for users with MFA enrolled.
              privy_mfa_token: nil,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  user_id: String,
                  privy_user_token: String,
                  privy_mfa_token: String,
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
