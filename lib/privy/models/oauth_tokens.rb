# frozen_string_literal: true

module Privy
  module Models
    class OAuthTokens < Privy::Internal::Type::BaseModel
      # @!attribute access_token
      #
      #   @return [String]
      required :access_token, String

      # @!attribute provider
      #
      #   @return [String]
      required :provider, String

      # @!attribute access_token_expires_in_seconds
      #
      #   @return [Float, nil]
      optional :access_token_expires_in_seconds, Float

      # @!attribute refresh_token
      #
      #   @return [String, nil]
      optional :refresh_token, String

      # @!attribute refresh_token_expires_in_seconds
      #
      #   @return [Float, nil]
      optional :refresh_token_expires_in_seconds, Float

      # @!attribute scopes
      #
      #   @return [Array<String>, nil]
      optional :scopes, Privy::Internal::Type::ArrayOf[String]

      # @!method initialize(access_token:, provider:, access_token_expires_in_seconds: nil, refresh_token: nil, refresh_token_expires_in_seconds: nil, scopes: nil)
      #   OAuth tokens associated with the user.
      #
      #   @param access_token [String]
      #   @param provider [String]
      #   @param access_token_expires_in_seconds [Float]
      #   @param refresh_token [String]
      #   @param refresh_token_expires_in_seconds [Float]
      #   @param scopes [Array<String>]
    end
  end
end
