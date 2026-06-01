# frozen_string_literal: true

module Privy
  module Models
    class OAuthTokenAuthorizationCodeRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute code
      #   The authorization code received from the authorization endpoint.
      #
      #   @return [String]
      required :code, String

      # @!attribute grant_type
      #
      #   @return [Symbol, Privy::Models::OAuthTokenAuthorizationCodeRequestBody::GrantType]
      required :grant_type, enum: -> { Privy::OAuthTokenAuthorizationCodeRequestBody::GrantType }

      # @!attribute client_id
      #   The client ID. Alternative to Basic auth header.
      #
      #   @return [String, nil]
      optional :client_id, String

      # @!attribute client_secret
      #   The client secret. Alternative to Basic auth header.
      #
      #   @return [String, nil]
      optional :client_secret, String

      # @!attribute redirect_uri
      #   The redirect URI used in the authorization request.
      #
      #   @return [String, nil]
      optional :redirect_uri, String

      # @!method initialize(code:, grant_type:, client_id: nil, client_secret: nil, redirect_uri: nil)
      #   Request body for the authorization_code grant type.
      #
      #   @param code [String] The authorization code received from the authorization endpoint.
      #
      #   @param grant_type [Symbol, Privy::Models::OAuthTokenAuthorizationCodeRequestBody::GrantType]
      #
      #   @param client_id [String] The client ID. Alternative to Basic auth header.
      #
      #   @param client_secret [String] The client secret. Alternative to Basic auth header.
      #
      #   @param redirect_uri [String] The redirect URI used in the authorization request.

      # @see Privy::Models::OAuthTokenAuthorizationCodeRequestBody#grant_type
      module GrantType
        extend Privy::Internal::Type::Enum

        AUTHORIZATION_CODE = :authorization_code

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
