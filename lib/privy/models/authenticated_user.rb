# frozen_string_literal: true

module Privy
  module Models
    class AuthenticatedUser < Privy::Internal::Type::BaseModel
      # @!attribute token
      #
      #   @return [String, nil]
      required :token, String, nil?: true

      # @!attribute privy_access_token
      #
      #   @return [String, nil]
      required :privy_access_token, String, nil?: true

      # @!attribute refresh_token
      #
      #   @return [String, nil]
      required :refresh_token, String, nil?: true

      # @!attribute session_update_action
      #   Instructs the client on how to handle tokens received
      #
      #   @return [Symbol, Privy::Models::AuthenticatedUser::SessionUpdateAction]
      required :session_update_action, enum: -> { Privy::AuthenticatedUser::SessionUpdateAction }

      # @!attribute user
      #   A Privy user object.
      #
      #   @return [Privy::Models::User]
      required :user, -> { Privy::User }

      # @!attribute identity_token
      #
      #   @return [String, nil]
      optional :identity_token, String

      # @!attribute is_new_user
      #
      #   @return [Boolean, nil]
      optional :is_new_user, Privy::Internal::Type::Boolean

      # @!attribute oauth_tokens
      #   OAuth tokens associated with the user.
      #
      #   @return [Privy::Models::OAuthTokens, nil]
      optional :oauth_tokens, -> { Privy::OAuthTokens }

      # @!method initialize(token:, privy_access_token:, refresh_token:, session_update_action:, user:, identity_token: nil, is_new_user: nil, oauth_tokens: nil)
      #   The authenticated user.
      #
      #   @param token [String, nil]
      #
      #   @param privy_access_token [String, nil]
      #
      #   @param refresh_token [String, nil]
      #
      #   @param session_update_action [Symbol, Privy::Models::AuthenticatedUser::SessionUpdateAction] Instructs the client on how to handle tokens received
      #
      #   @param user [Privy::Models::User] A Privy user object.
      #
      #   @param identity_token [String]
      #
      #   @param is_new_user [Boolean]
      #
      #   @param oauth_tokens [Privy::Models::OAuthTokens] OAuth tokens associated with the user.

      # Instructs the client on how to handle tokens received
      #
      # @see Privy::Models::AuthenticatedUser#session_update_action
      module SessionUpdateAction
        extend Privy::Internal::Type::Enum

        SET = :set
        IGNORE = :ignore
        CLEAR = :clear

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
