# frozen_string_literal: true

module Privy
  module Models
    module Users
      module Mfa
        module SMS
          # @see Privy::Resources::Users::Mfa::SMS::Verification#verify
          class VerificationVerifyParams < Privy::Models::Users::SMSMfaVerifyRequestBody
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

            # @!method initialize(user_id:, privy_user_token:, request_options: {})
            #   @param user_id [String]
            #
            #   @param privy_user_token [String] Access token or custom authentication JWT for the user the request acts on.
            #
            #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
