# frozen_string_literal: true

module Privy
  module Models
    # A linked account for the user.
    module LinkedAccount
      extend Privy::Internal::Type::Union

      # An email account linked to the user.
      variant -> { Privy::LinkedAccountEmail }

      # A phone number account linked to the user.
      variant -> { Privy::LinkedAccountPhone }

      # An Ethereum wallet account linked to the user.
      variant -> { Privy::LinkedAccountEthereum }

      # A Solana wallet account linked to the user.
      variant -> { Privy::LinkedAccountSolana }

      # A smart wallet account linked to the user.
      variant -> { Privy::LinkedAccountSmartWallet }

      # An Ethereum embedded wallet account linked to the user.
      variant -> { Privy::LinkedAccountEthereumEmbeddedWallet }

      # A Solana embedded wallet account linked to the user.
      variant -> { Privy::LinkedAccountSolanaEmbeddedWallet }

      # A Bitcoin SegWit embedded wallet account linked to the user.
      variant -> { Privy::LinkedAccountBitcoinSegwitEmbeddedWallet }

      # A Bitcoin Taproot embedded wallet account linked to the user.
      variant -> { Privy::LinkedAccountBitcoinTaprootEmbeddedWallet }

      # A curve signing embedded wallet account linked to the user.
      variant -> { Privy::LinkedAccountCurveSigningEmbeddedWallet }

      # A Google OAuth account linked to the user.
      variant -> { Privy::LinkedAccountGoogleOAuth }

      # A Twitter OAuth account linked to the user.
      variant -> { Privy::LinkedAccountTwitterOAuth }

      # A Discord OAuth account linked to the user.
      variant -> { Privy::LinkedAccountDiscordOAuth }

      # A GitHub OAuth account linked to the user.
      variant -> { Privy::LinkedAccountGitHubOAuth }

      # A Spotify OAuth account linked to the user.
      variant -> { Privy::LinkedAccountSpotifyOAuth }

      # An Instagram OAuth account linked to the user.
      variant -> { Privy::LinkedAccountInstagramOAuth }

      # A TikTok OAuth account linked to the user.
      variant -> { Privy::LinkedAccountTiktokOAuth }

      # A LINE OAuth account linked to the user.
      variant -> { Privy::LinkedAccountLineOAuth }

      # A Twitch OAuth account linked to the user.
      variant -> { Privy::LinkedAccountTwitchOAuth }

      # A LinkedIn OAuth account linked to the user.
      variant -> { Privy::LinkedAccountLinkedInOAuth }

      # An Apple OAuth account linked to the user.
      variant -> { Privy::LinkedAccountAppleOAuth }

      # A custom OAuth account linked to the user.
      variant -> { Privy::LinkedAccountCustomOAuth }

      # A custom JWT account linked to the user.
      variant -> { Privy::LinkedAccountCustomJwt }

      # A Farcaster account linked to the user.
      variant -> { Privy::LinkedAccountFarcaster }

      # A passkey account linked to the user.
      variant -> { Privy::LinkedAccountPasskey }

      # A Telegram account linked to the user.
      variant -> { Privy::LinkedAccountTelegram }

      # A cross-app account linked to the user.
      variant -> { Privy::LinkedAccountCrossApp }

      # An authorization key linked to the user.
      variant -> { Privy::LinkedAccountAuthorizationKey }

      # @!method self.variants
      #   @return [Array(Privy::Models::LinkedAccountEmail, Privy::Models::LinkedAccountPhone, Privy::Models::LinkedAccountEthereum, Privy::Models::LinkedAccountSolana, Privy::Models::LinkedAccountSmartWallet, Privy::Models::LinkedAccountEthereumEmbeddedWallet, Privy::Models::LinkedAccountSolanaEmbeddedWallet, Privy::Models::LinkedAccountBitcoinSegwitEmbeddedWallet, Privy::Models::LinkedAccountBitcoinTaprootEmbeddedWallet, Privy::Models::LinkedAccountCurveSigningEmbeddedWallet, Privy::Models::LinkedAccountGoogleOAuth, Privy::Models::LinkedAccountTwitterOAuth, Privy::Models::LinkedAccountDiscordOAuth, Privy::Models::LinkedAccountGitHubOAuth, Privy::Models::LinkedAccountSpotifyOAuth, Privy::Models::LinkedAccountInstagramOAuth, Privy::Models::LinkedAccountTiktokOAuth, Privy::Models::LinkedAccountLineOAuth, Privy::Models::LinkedAccountTwitchOAuth, Privy::Models::LinkedAccountLinkedInOAuth, Privy::Models::LinkedAccountAppleOAuth, Privy::Models::LinkedAccountCustomOAuth, Privy::Models::LinkedAccountCustomJwt, Privy::Models::LinkedAccountFarcaster, Privy::Models::LinkedAccountPasskey, Privy::Models::LinkedAccountTelegram, Privy::Models::LinkedAccountCrossApp, Privy::Models::LinkedAccountAuthorizationKey)]
    end
  end
end
