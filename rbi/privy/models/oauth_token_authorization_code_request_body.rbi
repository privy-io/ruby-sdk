# typed: strong

module Privy
  module Models
    class OAuthTokenAuthorizationCodeRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::OAuthTokenAuthorizationCodeRequestBody,
            Privy::Internal::AnyHash
          )
        end

      # The authorization code received from the authorization endpoint.
      sig { returns(String) }
      attr_accessor :code

      sig do
        returns(
          Privy::OAuthTokenAuthorizationCodeRequestBody::GrantType::OrSymbol
        )
      end
      attr_accessor :grant_type

      # The client ID. Alternative to Basic auth header.
      sig { returns(T.nilable(String)) }
      attr_reader :client_id

      sig { params(client_id: String).void }
      attr_writer :client_id

      # The client secret. Alternative to Basic auth header.
      sig { returns(T.nilable(String)) }
      attr_reader :client_secret

      sig { params(client_secret: String).void }
      attr_writer :client_secret

      # The redirect URI used in the authorization request.
      sig { returns(T.nilable(String)) }
      attr_reader :redirect_uri

      sig { params(redirect_uri: String).void }
      attr_writer :redirect_uri

      # Request body for the authorization_code grant type.
      sig do
        params(
          code: String,
          grant_type:
            Privy::OAuthTokenAuthorizationCodeRequestBody::GrantType::OrSymbol,
          client_id: String,
          client_secret: String,
          redirect_uri: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The authorization code received from the authorization endpoint.
        code:,
        grant_type:,
        # The client ID. Alternative to Basic auth header.
        client_id: nil,
        # The client secret. Alternative to Basic auth header.
        client_secret: nil,
        # The redirect URI used in the authorization request.
        redirect_uri: nil
      )
      end

      sig do
        override.returns(
          {
            code: String,
            grant_type:
              Privy::OAuthTokenAuthorizationCodeRequestBody::GrantType::OrSymbol,
            client_id: String,
            client_secret: String,
            redirect_uri: String
          }
        )
      end
      def to_hash
      end

      module GrantType
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Privy::OAuthTokenAuthorizationCodeRequestBody::GrantType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AUTHORIZATION_CODE =
          T.let(
            :authorization_code,
            Privy::OAuthTokenAuthorizationCodeRequestBody::GrantType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::OAuthTokenAuthorizationCodeRequestBody::GrantType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
