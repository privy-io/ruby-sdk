# frozen_string_literal: true

module Privy
  module Models
    # The input for adding a linked account to a user.
    module LinkedAccountInput
      extend Privy::Internal::Type::Union

      discriminator :type

      # The payload for importing a wallet account.
      variant :wallet, -> { Privy::LinkedAccountWalletInput }

      # The payload for importing an email account.
      variant :email, -> { Privy::LinkedAccountEmailInput }

      # The payload for importing a phone account.
      variant :phone, -> { Privy::LinkedAccountPhoneInput }

      # The payload for importing a Google account.
      variant :google_oauth, -> { Privy::LinkedAccountGoogleInput }

      # The payload for importing a Twitter account.
      variant :twitter_oauth, -> { Privy::LinkedAccountTwitterInput }

      # The payload for importing a Discord account.
      variant :discord_oauth, -> { Privy::LinkedAccountDiscordInput }

      # The payload for importing a Github account.
      variant :github_oauth, -> { Privy::LinkedAccountGitHubInput }

      # The payload for importing a Spotify account.
      variant :spotify_oauth, -> { Privy::LinkedAccountSpotifyInput }

      # The payload for importing an Instagram account.
      variant :instagram_oauth, -> { Privy::LinkedAccountInstagramInput }

      # The payload for importing a Tiktok account.
      variant :tiktok_oauth, -> { Privy::LinkedAccountTiktokInput }

      # The payload for importing a LINE account.
      variant :line_oauth, -> { Privy::LinkedAccountLineInput }

      # The payload for importing a Twitch account.
      variant :twitch_oauth, -> { Privy::LinkedAccountTwitchInput }

      # The payload for importing an Apple account.
      variant :apple_oauth, -> { Privy::LinkedAccountAppleInput }

      # The payload for importing a LinkedIn account.
      variant :linkedin_oauth, -> { Privy::LinkedAccountLinkedInInput }

      # The payload for importing a Farcaster account.
      variant :farcaster, -> { Privy::LinkedAccountFarcasterInput }

      # The payload for importing a Telegram account.
      variant :telegram, -> { Privy::LinkedAccountTelegramInput }

      # The payload for importing a Custom JWT account.
      variant :custom_auth, -> { Privy::LinkedAccountCustomJwtInput }

      # The payload for importing a passkey account.
      variant :passkey, -> { Privy::LinkedAccountPasskeyInput }

      # @!method self.variants
      #   @return [Array(Privy::Models::LinkedAccountWalletInput, Privy::Models::LinkedAccountEmailInput, Privy::Models::LinkedAccountPhoneInput, Privy::Models::LinkedAccountGoogleInput, Privy::Models::LinkedAccountTwitterInput, Privy::Models::LinkedAccountDiscordInput, Privy::Models::LinkedAccountGitHubInput, Privy::Models::LinkedAccountSpotifyInput, Privy::Models::LinkedAccountInstagramInput, Privy::Models::LinkedAccountTiktokInput, Privy::Models::LinkedAccountLineInput, Privy::Models::LinkedAccountTwitchInput, Privy::Models::LinkedAccountAppleInput, Privy::Models::LinkedAccountLinkedInInput, Privy::Models::LinkedAccountFarcasterInput, Privy::Models::LinkedAccountTelegramInput, Privy::Models::LinkedAccountCustomJwtInput, Privy::Models::LinkedAccountPasskeyInput)]
    end
  end
end
