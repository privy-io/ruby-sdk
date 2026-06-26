# typed: strong

module Privy
  module Models
    class AuthenticatedUser < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::AuthenticatedUser, Privy::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_accessor :token

      sig { returns(T.nilable(String)) }
      attr_accessor :privy_access_token

      sig { returns(T.nilable(String)) }
      attr_accessor :refresh_token

      # Instructs the client on how to handle tokens received from a session response.
      sig { returns(Privy::ClientSessionUpdateAction::OrSymbol) }
      attr_accessor :session_update_action

      # A Privy user object.
      sig { returns(Privy::User) }
      attr_reader :user

      sig { params(user: Privy::User::OrHash).void }
      attr_writer :user

      sig { returns(T.nilable(String)) }
      attr_reader :identity_token

      sig { params(identity_token: String).void }
      attr_writer :identity_token

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_new_user

      sig { params(is_new_user: T::Boolean).void }
      attr_writer :is_new_user

      # OAuth tokens associated with the user.
      sig { returns(T.nilable(Privy::OAuthTokens)) }
      attr_reader :oauth_tokens

      sig { params(oauth_tokens: Privy::OAuthTokens::OrHash).void }
      attr_writer :oauth_tokens

      # The authenticated user.
      sig do
        params(
          token: T.nilable(String),
          privy_access_token: T.nilable(String),
          refresh_token: T.nilable(String),
          session_update_action: Privy::ClientSessionUpdateAction::OrSymbol,
          user: Privy::User::OrHash,
          identity_token: String,
          is_new_user: T::Boolean,
          oauth_tokens: Privy::OAuthTokens::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        token:,
        privy_access_token:,
        refresh_token:,
        # Instructs the client on how to handle tokens received from a session response.
        session_update_action:,
        # A Privy user object.
        user:,
        identity_token: nil,
        is_new_user: nil,
        # OAuth tokens associated with the user.
        oauth_tokens: nil
      )
      end

      sig do
        override.returns(
          {
            token: T.nilable(String),
            privy_access_token: T.nilable(String),
            refresh_token: T.nilable(String),
            session_update_action: Privy::ClientSessionUpdateAction::OrSymbol,
            user: Privy::User,
            identity_token: String,
            is_new_user: T::Boolean,
            oauth_tokens: Privy::OAuthTokens
          }
        )
      end
      def to_hash
      end
    end
  end
end
