# frozen_string_literal: true

module Privy
  module Models
    class OAuthInitRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute provider
      #   The ID of an OAuth provider.
      #
      #   @return [Symbol, Privy::Models::ExternalOAuthProviderID, String]
      required :provider, union: -> { Privy::OAuthProviderID }

      # @!attribute redirect_to
      #
      #   @return [String]
      required :redirect_to, String

      # @!attribute token
      #
      #   @return [String, nil]
      optional :token, String

      # @!attribute code_challenge
      #
      #   @return [String, nil]
      optional :code_challenge, String

      # @!attribute state_code
      #
      #   @return [String, nil]
      optional :state_code, String

      # @!method initialize(provider:, redirect_to:, token: nil, code_challenge: nil, state_code: nil)
      #   The request body for initiating an OAuth ceremony.
      #
      #   @param provider [Symbol, Privy::Models::ExternalOAuthProviderID, String] The ID of an OAuth provider.
      #
      #   @param redirect_to [String]
      #
      #   @param token [String]
      #
      #   @param code_challenge [String]
      #
      #   @param state_code [String]
    end
  end
end
