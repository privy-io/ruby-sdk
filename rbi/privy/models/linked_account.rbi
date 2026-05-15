# typed: strong

module Privy
  module Models
    # A linked account for the user.
    module LinkedAccount
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::LinkedAccountEmail,
            Privy::LinkedAccountPhone,
            Privy::LinkedAccountEthereum,
            Privy::LinkedAccountSolana,
            Privy::LinkedAccountSmartWallet,
            Privy::LinkedAccountEthereumEmbeddedWallet,
            Privy::LinkedAccountSolanaEmbeddedWallet,
            Privy::LinkedAccountBitcoinSegwitEmbeddedWallet,
            Privy::LinkedAccountBitcoinTaprootEmbeddedWallet,
            Privy::LinkedAccountCurveSigningEmbeddedWallet,
            Privy::LinkedAccountGoogleOAuth,
            Privy::LinkedAccountTwitterOAuth,
            Privy::LinkedAccountDiscordOAuth,
            Privy::LinkedAccountGitHubOAuth,
            Privy::LinkedAccountSpotifyOAuth,
            Privy::LinkedAccountInstagramOAuth,
            Privy::LinkedAccountTiktokOAuth,
            Privy::LinkedAccountLineOAuth,
            Privy::LinkedAccountTwitchOAuth,
            Privy::LinkedAccountLinkedInOAuth,
            Privy::LinkedAccountAppleOAuth,
            Privy::LinkedAccountCustomOAuth,
            Privy::LinkedAccountCustomJwt,
            Privy::LinkedAccountFarcaster,
            Privy::LinkedAccountPasskey,
            Privy::LinkedAccountTelegram,
            Privy::LinkedAccountCrossApp,
            Privy::LinkedAccountAuthorizationKey
          )
        end

      sig { override.returns(T::Array[Privy::LinkedAccount::Variants]) }
      def self.variants
      end
    end
  end
end
