# frozen_string_literal: true

module Privy
  module Models
    module Users
      module Mfa
        module Passkey
          # @see Privy::Resources::Users::Mfa::Passkey::Verification#init
          class VerificationInitParams < Privy::Models::Users::PasskeyMfaInitRequestBody
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

            # @!method initialize(user_id:, user_jwt:, request_options: {})
            #   @param user_id [String]
            #
            #   @param user_jwt [String] Access token or custom authentication JWT for the user the request acts on.
            #
            #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
