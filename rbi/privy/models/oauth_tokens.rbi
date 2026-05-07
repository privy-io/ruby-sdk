# typed: strong

module Privy
  module Models
    class OAuthTokens < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::OAuthTokens, Privy::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :access_token

      sig { returns(String) }
      attr_accessor :provider

      sig { returns(T.nilable(Float)) }
      attr_reader :access_token_expires_in_seconds

      sig { params(access_token_expires_in_seconds: Float).void }
      attr_writer :access_token_expires_in_seconds

      sig { returns(T.nilable(String)) }
      attr_reader :refresh_token

      sig { params(refresh_token: String).void }
      attr_writer :refresh_token

      sig { returns(T.nilable(Float)) }
      attr_reader :refresh_token_expires_in_seconds

      sig { params(refresh_token_expires_in_seconds: Float).void }
      attr_writer :refresh_token_expires_in_seconds

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :scopes

      sig { params(scopes: T::Array[String]).void }
      attr_writer :scopes

      # OAuth tokens associated with the user.
      sig do
        params(
          access_token: String,
          provider: String,
          access_token_expires_in_seconds: Float,
          refresh_token: String,
          refresh_token_expires_in_seconds: Float,
          scopes: T::Array[String]
        ).returns(T.attached_class)
      end
      def self.new(
        access_token:,
        provider:,
        access_token_expires_in_seconds: nil,
        refresh_token: nil,
        refresh_token_expires_in_seconds: nil,
        scopes: nil
      )
      end

      sig do
        override.returns(
          {
            access_token: String,
            provider: String,
            access_token_expires_in_seconds: Float,
            refresh_token: String,
            refresh_token_expires_in_seconds: Float,
            scopes: T::Array[String]
          }
        )
      end
      def to_hash
      end
    end
  end
end
