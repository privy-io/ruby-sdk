# typed: strong

module Privy
  module Models
    # Request body for the OAuth token endpoint, discriminated by grant_type.
    module OAuthTokenRequestBody
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::OAuthTokenAuthorizationCodeRequestBody,
            Privy::OAuthTokenDeviceCodeRequestBody,
            Privy::OAuthTokenRefreshTokenRequestBody
          )
        end

      sig { override.returns(T::Array[Privy::OAuthTokenRequestBody::Variants]) }
      def self.variants
      end
    end
  end
end
