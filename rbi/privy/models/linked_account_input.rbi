# typed: strong

module Privy
  module Models
    # The input for adding a linked account to a user.
    module LinkedAccountInput
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::LinkedAccountWalletInput,
            Privy::LinkedAccountEmailInput,
            Privy::LinkedAccountPhoneInput,
            Privy::LinkedAccountGoogleInput,
            Privy::LinkedAccountTwitterInput,
            Privy::LinkedAccountDiscordInput,
            Privy::LinkedAccountGitHubInput,
            Privy::LinkedAccountSpotifyInput,
            Privy::LinkedAccountInstagramInput,
            Privy::LinkedAccountTiktokInput,
            Privy::LinkedAccountLineInput,
            Privy::LinkedAccountTwitchInput,
            Privy::LinkedAccountAppleInput,
            Privy::LinkedAccountLinkedInInput,
            Privy::LinkedAccountFarcasterInput,
            Privy::LinkedAccountTelegramInput,
            Privy::LinkedAccountCustomJwtInput,
            Privy::LinkedAccountPasskeyInput
          )
        end

      sig { override.returns(T::Array[Privy::LinkedAccountInput::Variants]) }
      def self.variants
      end
    end
  end
end
