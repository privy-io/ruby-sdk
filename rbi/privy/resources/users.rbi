# typed: strong

module Privy
  module Resources
    # Operations related to users
    class Users
      # Create a new user with linked accounts. Optionally pre-generate embedded wallets
      # for the user.
      sig do
        params(
          linked_accounts:
            T::Array[
              T.any(
                Privy::LinkedAccountWalletInput::OrHash,
                Privy::LinkedAccountEmailInput::OrHash,
                Privy::LinkedAccountPhoneInput::OrHash,
                Privy::LinkedAccountGoogleInput::OrHash,
                Privy::LinkedAccountTwitterInput::OrHash,
                Privy::LinkedAccountDiscordInput::OrHash,
                Privy::LinkedAccountGitHubInput::OrHash,
                Privy::LinkedAccountSpotifyInput::OrHash,
                Privy::LinkedAccountInstagramInput::OrHash,
                Privy::LinkedAccountTiktokInput::OrHash,
                Privy::LinkedAccountLineInput::OrHash,
                Privy::LinkedAccountTwitchInput::OrHash,
                Privy::LinkedAccountAppleInput::OrHash,
                Privy::LinkedAccountLinkedInInput::OrHash,
                Privy::LinkedAccountFarcasterInput::OrHash,
                Privy::LinkedAccountTelegramInput::OrHash,
                Privy::LinkedAccountCustomJwtInput::OrHash,
                Privy::LinkedAccountPasskeyInput::OrHash
              )
            ],
          custom_metadata: T::Hash[Symbol, Privy::CustomMetadataItem::Variants],
          wallets: T::Array[Privy::UserCreateParams::Wallet::OrHash],
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::User)
      end
      def create(
        linked_accounts:,
        # Custom metadata associated with the user.
        custom_metadata: nil,
        # Wallets to create for the user.
        wallets: nil,
        request_options: {}
      )
      end

      # Get all users in your app.
      sig do
        params(
          cursor: String,
          limit: T.nilable(Float),
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::Internal::Cursor[Privy::User])
      end
      def list(cursor: nil, limit: nil, request_options: {})
      end

      # Delete a user by user ID.
      sig do
        params(
          user_id: String,
          request_options: Privy::RequestOptions::OrHash
        ).void
      end
      def delete(
        # ID of the user.
        user_id,
        request_options: {}
      )
      end

      # Get a user by user ID.
      sig do
        params(
          user_id: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::User)
      end
      def get(
        # User ID
        user_id,
        request_options: {}
      )
      end

      # Looks up a user by their custom auth ID.
      sig do
        params(
          custom_user_id: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::User)
      end
      def get_by_custom_auth_id(custom_user_id:, request_options: {})
      end

      # Looks up a user by their Discord username.
      sig do
        params(
          username: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::User)
      end
      def get_by_discord_username(username:, request_options: {})
      end

      # Looks up a user by their email address.
      sig do
        params(
          address: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::User)
      end
      def get_by_email_address(address:, request_options: {})
      end

      # Looks up a user by their Farcaster ID.
      sig do
        params(
          fid: Float,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::User)
      end
      def get_by_farcaster_id(fid:, request_options: {})
      end

      # Looks up a user by their Github username.
      sig do
        params(
          username: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::User)
      end
      def get_by_github_username(username:, request_options: {})
      end

      # Looks up a user by their phone number.
      sig do
        params(
          number: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::User)
      end
      def get_by_phone_number(number:, request_options: {})
      end

      # Looks up a user by their smart wallet address.
      sig do
        params(
          address: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::User)
      end
      def get_by_smart_wallet_address(address:, request_options: {})
      end

      # Looks up a user by their Telegram user ID.
      sig do
        params(
          telegram_user_id: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::User)
      end
      def get_by_telegram_user_id(telegram_user_id:, request_options: {})
      end

      # Looks up a user by their Telegram username.
      sig do
        params(
          username: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::User)
      end
      def get_by_telegram_username(username:, request_options: {})
      end

      # Looks up a user by their Twitter subject.
      sig do
        params(
          subject: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::User)
      end
      def get_by_twitter_subject(subject:, request_options: {})
      end

      # Looks up a user by their Twitter username.
      sig do
        params(
          username: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::User)
      end
      def get_by_twitter_username(username:, request_options: {})
      end

      # Looks up a user by their wallet address.
      sig do
        params(
          address: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::User)
      end
      def get_by_wallet_address(address:, request_options: {})
      end

      # Creates an embedded wallet for an existing user.
      sig do
        params(
          user_id: String,
          wallets: T::Array[Privy::WalletCreationInput::OrHash],
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::User)
      end
      def pregenerate_wallets(
        # ID of the user.
        user_id,
        wallets:,
        request_options: {}
      )
      end

      # Search users by search term, emails, phone numbers, or wallet addresses.
      sig do
        params(
          body:
            T.any(
              Privy::UserSearchParams::Body::SearchTerm::OrHash,
              Privy::UserSearchParams::Body::UnionMember1::OrHash
            ),
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::User)
      end
      def search(body:, request_options: {})
      end

      # Adds custom metadata to a user by user ID.
      sig do
        params(
          user_id: String,
          custom_metadata: T::Hash[Symbol, Privy::CustomMetadataItem::Variants],
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::User)
      end
      def set_custom_metadata(
        # ID of the user.
        user_id,
        # Custom metadata associated with the user.
        custom_metadata:,
        request_options: {}
      )
      end

      # Unlinks a user linked account.
      sig do
        params(
          user_id: String,
          handle: String,
          type: T.any(Privy::LinkedAccountType::OrSymbol, String),
          provider: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::User)
      end
      def unlink_linked_account(
        # ID of the user.
        user_id,
        handle:,
        # The possible types of linked accounts.
        type:,
        provider: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Privy::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
