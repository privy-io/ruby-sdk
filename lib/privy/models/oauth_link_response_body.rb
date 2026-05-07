# frozen_string_literal: true

module Privy
  module Models
    class OAuthLinkResponseBody < Privy::Models::User
      # @!attribute oauth_tokens
      #   OAuth tokens associated with the user.
      #
      #   @return [Privy::Models::OAuthTokens, nil]
      optional :oauth_tokens, -> { Privy::OAuthTokens }

      # @!method initialize(oauth_tokens: nil)
      #   The response for linking an OAuth account.
      #
      #   @param oauth_tokens [Privy::Models::OAuthTokens] OAuth tokens associated with the user.
    end
  end
end
