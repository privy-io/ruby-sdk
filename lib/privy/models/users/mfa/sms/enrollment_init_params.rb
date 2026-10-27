# frozen_string_literal: true

module Privy
  module Models
    module Users
      module Mfa
        module SMS
          # @see Privy::Resources::Users::Mfa::SMS::Enrollment#init
          class EnrollmentInitParams < Privy::Models::Users::SMSMfaEnrollmentInitRequestBody
            extend Privy::Internal::Type::RequestParameters::Converter
            include Privy::Internal::Type::RequestParameters

            # @!attribute user_id
            #
            #   @return [String]
            required :user_id, String

            # @!attribute privy_user_token
            #   Access token or custom authentication JWT for the user the request acts on.
            #
            #   @return [String]
            required :privy_user_token, String

            # @!attribute privy_mfa_token
            #   MFA token from a completed MFA verification, required on MFA-protected requests
            #   for users with MFA enrolled.
            #
            #   @return [String, nil]
            optional :privy_mfa_token, String

            # @!method initialize(user_id:, privy_user_token:, privy_mfa_token: nil, request_options: {})
            #   Some parameter documentations has been truncated, see
            #   {Privy::Models::Users::Mfa::SMS::EnrollmentInitParams} for more details.
            #
            #   @param user_id [String]
            #
            #   @param privy_user_token [String] Access token or custom authentication JWT for the user the request acts on.
            #
            #   @param privy_mfa_token [String] MFA token from a completed MFA verification, required on MFA-protected requests
            #
            #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
