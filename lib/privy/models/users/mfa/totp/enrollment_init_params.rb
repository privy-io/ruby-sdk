# frozen_string_literal: true

module Privy
  module Models
    module Users
      module Mfa
        module Totp
          # @see Privy::Resources::Users::Mfa::Totp::Enrollment#init
          class EnrollmentInitParams < Privy::Internal::Type::BaseModel
            extend Privy::Internal::Type::RequestParameters::Converter
            include Privy::Internal::Type::RequestParameters

            # @!attribute user_id
            #
            #   @return [String]
            required :user_id, String

            # @!attribute user_jwt
            #   Access token or custom authentication JWT for the user the request acts on.
            #
            #   @return [String]
            required :user_jwt, String

            # @!attribute mfa_token
            #   MFA token from a completed MFA verification, required on MFA-protected requests
            #   for users with MFA enrolled.
            #
            #   @return [String, nil]
            optional :mfa_token, String

            # @!method initialize(user_id:, user_jwt:, mfa_token: nil, request_options: {})
            #   Some parameter documentations has been truncated, see
            #   {Privy::Models::Users::Mfa::Totp::EnrollmentInitParams} for more details.
            #
            #   @param user_id [String]
            #
            #   @param user_jwt [String] Access token or custom authentication JWT for the user the request acts on.
            #
            #   @param mfa_token [String] MFA token from a completed MFA verification, required on MFA-protected requests
            #
            #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
