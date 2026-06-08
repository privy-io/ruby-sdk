# frozen_string_literal: true

module Privy
  module Models
    class OAuthTokenRefreshTokenRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute grant_type
      #
      #   @return [Symbol, Privy::Models::OAuthTokenRefreshTokenRequestBody::GrantType]
      required :grant_type, enum: -> { Privy::OAuthTokenRefreshTokenRequestBody::GrantType }

      # @!attribute refresh_token
      #   The refresh token to exchange for a new access token.
      #
      #   @return [String]
      required :refresh_token, String

      # @!method initialize(grant_type:, refresh_token:)
      #   Request body for the refresh_token grant type. Rotates the refresh token and
      #   issues a new access token.
      #
      #   @param grant_type [Symbol, Privy::Models::OAuthTokenRefreshTokenRequestBody::GrantType]
      #
      #   @param refresh_token [String] The refresh token to exchange for a new access token.

      # @see Privy::Models::OAuthTokenRefreshTokenRequestBody#grant_type
      module GrantType
        extend Privy::Internal::Type::Enum

        REFRESH_TOKEN = :refresh_token

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
