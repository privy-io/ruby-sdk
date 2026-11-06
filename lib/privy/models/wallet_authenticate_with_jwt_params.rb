# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Wallets#authenticate_with_jwt
    class WalletAuthenticateWithJwtParams < Privy::Models::WalletAuthenticateRequestBody
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      # @!attribute mfa_token
      #   MFA token from a completed MFA verification, required on MFA-protected requests
      #   for users with MFA enrolled.
      #
      #   @return [String, nil]
      optional :mfa_token, String

      # @!method initialize(mfa_token: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::WalletAuthenticateWithJwtParams} for more details.
      #
      #   @param mfa_token [String] MFA token from a completed MFA verification, required on MFA-protected requests
      #
      #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
