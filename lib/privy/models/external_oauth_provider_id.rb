# frozen_string_literal: true

module Privy
  module Models
    # The ID of an external OAuth provider.
    module ExternalOAuthProviderID
      extend Privy::Internal::Type::Enum

      GOOGLE = :google
      DISCORD = :discord
      TWITTER = :twitter
      GITHUB = :github
      SPOTIFY = :spotify
      INSTAGRAM = :instagram
      TIKTOK = :tiktok
      LINKEDIN = :linkedin
      APPLE = :apple
      LINE = :line
      TWITCH = :twitch

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
