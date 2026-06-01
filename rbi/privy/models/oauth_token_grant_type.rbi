# typed: strong

module Privy
  module Models
    # The OAuth grant type for the token request.
    module OAuthTokenGrantType
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::OAuthTokenGrantType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      AUTHORIZATION_CODE =
        T.let(:authorization_code, Privy::OAuthTokenGrantType::TaggedSymbol)
      URN_IETF_PARAMS_OAUTH_GRANT_TYPE_DEVICE_CODE =
        T.let(
          :"urn:ietf:params:oauth:grant-type:device_code",
          Privy::OAuthTokenGrantType::TaggedSymbol
        )
      REFRESH_TOKEN =
        T.let(:refresh_token, Privy::OAuthTokenGrantType::TaggedSymbol)

      sig do
        override.returns(T::Array[Privy::OAuthTokenGrantType::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
