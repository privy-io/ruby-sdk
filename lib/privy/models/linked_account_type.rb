# frozen_string_literal: true

module Privy
  module Models
    # The possible types of linked accounts.
    module LinkedAccountType
      extend Privy::Internal::Type::Union

      variant const: -> { Privy::Models::LinkedAccountType::EMAIL }

      variant const: -> { Privy::Models::LinkedAccountType::PHONE }

      variant const: -> { Privy::Models::LinkedAccountType::WALLET }

      variant const: -> { Privy::Models::LinkedAccountType::SMART_WALLET }

      variant const: -> { Privy::Models::LinkedAccountType::GOOGLE_OAUTH }

      variant const: -> { Privy::Models::LinkedAccountType::TWITTER_OAUTH }

      variant const: -> { Privy::Models::LinkedAccountType::DISCORD_OAUTH }

      variant const: -> { Privy::Models::LinkedAccountType::GITHUB_OAUTH }

      variant const: -> { Privy::Models::LinkedAccountType::SPOTIFY_OAUTH }

      variant const: -> { Privy::Models::LinkedAccountType::INSTAGRAM_OAUTH }

      variant const: -> { Privy::Models::LinkedAccountType::TIKTOK_OAUTH }

      variant const: -> { Privy::Models::LinkedAccountType::LINE_OAUTH }

      variant const: -> { Privy::Models::LinkedAccountType::TWITCH_OAUTH }

      variant const: -> { Privy::Models::LinkedAccountType::LINKEDIN_OAUTH }

      variant const: -> { Privy::Models::LinkedAccountType::APPLE_OAUTH }

      variant const: -> { Privy::Models::LinkedAccountType::CUSTOM_AUTH }

      variant const: -> { Privy::Models::LinkedAccountType::FARCASTER }

      variant const: -> { Privy::Models::LinkedAccountType::PASSKEY }

      variant const: -> { Privy::Models::LinkedAccountType::TELEGRAM }

      variant const: -> { Privy::Models::LinkedAccountType::CROSS_APP }

      variant const: -> { Privy::Models::LinkedAccountType::AUTHORIZATION_KEY }

      # The ID of a custom OAuth provider, set up for this app. Must start with "custom:".
      variant -> { Privy::CustomOAuthProviderID }

      # @!method self.variants
      #   @return [Array(Symbol, String)]

      define_sorbet_constant!(:Variants) do
        T.type_alias { T.any(Privy::LinkedAccountType::TaggedSymbol, String) }
      end

      # @!group

      EMAIL = :email
      PHONE = :phone
      WALLET = :wallet
      SMART_WALLET = :smart_wallet
      GOOGLE_OAUTH = :google_oauth
      TWITTER_OAUTH = :twitter_oauth
      DISCORD_OAUTH = :discord_oauth
      GITHUB_OAUTH = :github_oauth
      SPOTIFY_OAUTH = :spotify_oauth
      INSTAGRAM_OAUTH = :instagram_oauth
      TIKTOK_OAUTH = :tiktok_oauth
      LINE_OAUTH = :line_oauth
      TWITCH_OAUTH = :twitch_oauth
      LINKEDIN_OAUTH = :linkedin_oauth
      APPLE_OAUTH = :apple_oauth
      CUSTOM_AUTH = :custom_auth
      FARCASTER = :farcaster
      PASSKEY = :passkey
      TELEGRAM = :telegram
      CROSS_APP = :cross_app
      AUTHORIZATION_KEY = :authorization_key

      # @!endgroup
    end
  end
end
