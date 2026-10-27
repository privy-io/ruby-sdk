# typed: strong

module Privy
  module Models
    module Users
      module Mfa
        module SMS
          class VerificationVerifyParams < Privy::Models::Users::SMSMfaVerifyRequestBody
            extend Privy::Internal::Type::RequestParameters::Converter
            include Privy::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  Privy::Users::Mfa::SMS::VerificationVerifyParams,
                  Privy::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :user_id

            # Access token or custom authentication JWT for the user the request acts on.
            sig { returns(String) }
            attr_accessor :privy_user_token

            sig do
              params(
                user_id: String,
                privy_user_token: String,
                request_options: Privy::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              user_id:,
              # Access token or custom authentication JWT for the user the request acts on.
              privy_user_token:,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  user_id: String,
                  privy_user_token: String,
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
