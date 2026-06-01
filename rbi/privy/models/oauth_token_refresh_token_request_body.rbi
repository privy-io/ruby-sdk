# typed: strong

module Privy
  module Models
    class OAuthTokenRefreshTokenRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::OAuthTokenRefreshTokenRequestBody,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(Privy::OAuthTokenRefreshTokenRequestBody::GrantType::OrSymbol)
      end
      attr_accessor :grant_type

      # The refresh token to exchange for a new access token.
      sig { returns(String) }
      attr_accessor :refresh_token

      # Request body for the refresh_token grant type. Rotates the refresh token and
      # issues a new access token.
      sig do
        params(
          grant_type:
            Privy::OAuthTokenRefreshTokenRequestBody::GrantType::OrSymbol,
          refresh_token: String
        ).returns(T.attached_class)
      end
      def self.new(
        grant_type:,
        # The refresh token to exchange for a new access token.
        refresh_token:
      )
      end

      sig do
        override.returns(
          {
            grant_type:
              Privy::OAuthTokenRefreshTokenRequestBody::GrantType::OrSymbol,
            refresh_token: String
          }
        )
      end
      def to_hash
      end

      module GrantType
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::OAuthTokenRefreshTokenRequestBody::GrantType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REFRESH_TOKEN =
          T.let(
            :refresh_token,
            Privy::OAuthTokenRefreshTokenRequestBody::GrantType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::OAuthTokenRefreshTokenRequestBody::GrantType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
