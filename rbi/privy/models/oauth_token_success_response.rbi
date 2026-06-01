# typed: strong

module Privy
  module Models
    class OAuthTokenSuccessResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::OAuthTokenSuccessResponse, Privy::Internal::AnyHash)
        end

      # The issued access token.
      sig { returns(String) }
      attr_accessor :access_token

      # The type of token issued.
      sig { returns(Privy::OAuthTokenSuccessResponse::TokenType::OrSymbol) }
      attr_accessor :token_type

      # The lifetime in seconds of the access token.
      sig { returns(T.nilable(Float)) }
      attr_reader :expires_in

      sig { params(expires_in: Float).void }
      attr_writer :expires_in

      # A refresh token for obtaining new access tokens. Issued for device_code and
      # refresh_token grants.
      sig { returns(T.nilable(String)) }
      attr_reader :refresh_token

      sig { params(refresh_token: String).void }
      attr_writer :refresh_token

      # Successful token response per RFC 6749 Section 5.1.
      sig do
        params(
          access_token: String,
          token_type: Privy::OAuthTokenSuccessResponse::TokenType::OrSymbol,
          expires_in: Float,
          refresh_token: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The issued access token.
        access_token:,
        # The type of token issued.
        token_type:,
        # The lifetime in seconds of the access token.
        expires_in: nil,
        # A refresh token for obtaining new access tokens. Issued for device_code and
        # refresh_token grants.
        refresh_token: nil
      )
      end

      sig do
        override.returns(
          {
            access_token: String,
            token_type: Privy::OAuthTokenSuccessResponse::TokenType::OrSymbol,
            expires_in: Float,
            refresh_token: String
          }
        )
      end
      def to_hash
      end

      # The type of token issued.
      module TokenType
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::OAuthTokenSuccessResponse::TokenType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BEARER =
          T.let(
            :Bearer,
            Privy::OAuthTokenSuccessResponse::TokenType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::OAuthTokenSuccessResponse::TokenType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
