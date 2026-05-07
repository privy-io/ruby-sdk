# frozen_string_literal: true

module Privy
  module Models
    class OAuthAuthenticateRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute authorization_code
      #
      #   @return [String]
      required :authorization_code, String

      # @!attribute state_code
      #
      #   @return [String]
      required :state_code, String

      # @!attribute code_type
      #   The type of OAuth authorization code.
      #
      #   @return [Symbol, Privy::Models::OAuthCodeType, nil]
      optional :code_type, enum: -> { Privy::OAuthCodeType }

      # @!attribute code_verifier
      #
      #   @return [String, nil]
      optional :code_verifier, String

      # @!attribute mode
      #   Whether to allow sign-up during authentication.
      #
      #   @return [Symbol, Privy::Models::AuthenticateModeOption, nil]
      optional :mode, enum: -> { Privy::AuthenticateModeOption }

      # @!method initialize(authorization_code:, state_code:, code_type: nil, code_verifier: nil, mode: nil)
      #   The request body for authenticating an OAuth account.
      #
      #   @param authorization_code [String]
      #
      #   @param state_code [String]
      #
      #   @param code_type [Symbol, Privy::Models::OAuthCodeType] The type of OAuth authorization code.
      #
      #   @param code_verifier [String]
      #
      #   @param mode [Symbol, Privy::Models::AuthenticateModeOption] Whether to allow sign-up during authentication.
    end
  end
end
