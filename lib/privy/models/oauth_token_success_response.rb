# frozen_string_literal: true

module Privy
  module Models
    class OAuthTokenSuccessResponse < Privy::Internal::Type::BaseModel
      # @!attribute access_token
      #   The issued access token.
      #
      #   @return [String]
      required :access_token, String

      # @!attribute token_type
      #   The type of token issued.
      #
      #   @return [Symbol, Privy::Models::OAuthTokenSuccessResponse::TokenType]
      required :token_type, enum: -> { Privy::OAuthTokenSuccessResponse::TokenType }

      # @!attribute expires_in
      #   The lifetime in seconds of the access token.
      #
      #   @return [Float, nil]
      optional :expires_in, Float

      # @!attribute refresh_token
      #   A refresh token for obtaining new access tokens. Issued for device_code and
      #   refresh_token grants.
      #
      #   @return [String, nil]
      optional :refresh_token, String

      # @!method initialize(access_token:, token_type:, expires_in: nil, refresh_token: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::OAuthTokenSuccessResponse} for more details.
      #
      #   Successful token response per RFC 6749 Section 5.1.
      #
      #   @param access_token [String] The issued access token.
      #
      #   @param token_type [Symbol, Privy::Models::OAuthTokenSuccessResponse::TokenType] The type of token issued.
      #
      #   @param expires_in [Float] The lifetime in seconds of the access token.
      #
      #   @param refresh_token [String] A refresh token for obtaining new access tokens. Issued for device_code and refr

      # The type of token issued.
      #
      # @see Privy::Models::OAuthTokenSuccessResponse#token_type
      module TokenType
        extend Privy::Internal::Type::Enum

        BEARER = :Bearer

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
