# typed: strong

module Privy
  module Models
    class OAuthLinkResponseBody < Privy::Models::User
      OrHash =
        T.type_alias do
          T.any(Privy::OAuthLinkResponseBody, Privy::Internal::AnyHash)
        end

      # OAuth tokens associated with the user.
      sig { returns(T.nilable(Privy::OAuthTokens)) }
      attr_reader :oauth_tokens

      sig { params(oauth_tokens: Privy::OAuthTokens::OrHash).void }
      attr_writer :oauth_tokens

      # The response for linking an OAuth account.
      sig do
        params(oauth_tokens: Privy::OAuthTokens::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(
        # OAuth tokens associated with the user.
        oauth_tokens: nil
      )
      end

      sig { override.returns({ oauth_tokens: Privy::OAuthTokens }) }
      def to_hash
      end
    end
  end
end
