# frozen_string_literal: true

module Privy
  module Resources
    # Operations related to users
    class Users
      # Create a new user with linked accounts. Optionally pre-generate embedded wallets
      # for the user.
      #
      # @overload create(linked_accounts:, custom_metadata: nil, wallets: nil, request_options: {})
      #
      # @param linked_accounts [Array<Privy::Models::LinkedAccountWalletInput, Privy::Models::LinkedAccountEmailInput, Privy::Models::LinkedAccountPhoneInput, Privy::Models::LinkedAccountGoogleInput, Privy::Models::LinkedAccountTwitterInput, Privy::Models::LinkedAccountDiscordInput, Privy::Models::LinkedAccountGitHubInput, Privy::Models::LinkedAccountSpotifyInput, Privy::Models::LinkedAccountInstagramInput, Privy::Models::LinkedAccountTiktokInput, Privy::Models::LinkedAccountLineInput, Privy::Models::LinkedAccountTwitchInput, Privy::Models::LinkedAccountAppleInput, Privy::Models::LinkedAccountLinkedInInput, Privy::Models::LinkedAccountFarcasterInput, Privy::Models::LinkedAccountTelegramInput, Privy::Models::LinkedAccountCustomJwtInput, Privy::Models::LinkedAccountPasskeyInput>]
      #
      # @param custom_metadata [Hash{Symbol=>String, Float, Boolean}] Custom metadata associated with the user.
      #
      # @param wallets [Array<Privy::Models::UserCreateParams::Wallet>] Wallets to create for the user.
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::User]
      #
      # @see Privy::Models::UserCreateParams
      def create(params)
        parsed, options = Privy::UserCreateParams.dump_request(params)
        @client.request(method: :post, path: "v1/users", body: parsed, model: Privy::User, options: options)
      end

      # Get all users in your app.
      #
      # @overload list(cursor: nil, limit: nil, request_options: {})
      #
      # @param cursor [String]
      # @param limit [Float, nil]
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Internal::Cursor<Privy::Models::User>]
      #
      # @see Privy::Models::UserListParams
      def list(params = {})
        parsed, options = Privy::UserListParams.dump_request(params)
        query = Privy::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "v1/users",
          query: query,
          page: Privy::Internal::Cursor,
          model: Privy::User,
          options: options
        )
      end

      # Delete a user by user ID.
      #
      # @overload delete(user_id, request_options: {})
      #
      # @param user_id [String] ID of the user.
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Privy::Models::UserDeleteParams
      def delete(user_id, params = {})
        @client.request(
          method: :delete,
          path: ["v1/users/%1$s", user_id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Get a user by user ID.
      #
      # @overload get(user_id, request_options: {})
      #
      # @param user_id [String] User ID
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::User]
      #
      # @see Privy::Models::UserGetParams
      def get(user_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/users/%1$s", user_id],
          model: Privy::User,
          options: params[:request_options]
        )
      end

      # Looks up a user by their custom auth ID.
      #
      # @overload get_by_custom_auth_id(custom_user_id:, request_options: {})
      #
      # @param custom_user_id [String]
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::User]
      #
      # @see Privy::Models::UserGetByCustomAuthIDParams
      def get_by_custom_auth_id(params)
        parsed, options = Privy::UserGetByCustomAuthIDParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/users/custom_auth/id",
          body: parsed,
          model: Privy::User,
          options: options
        )
      end

      # Looks up a user by their Discord username.
      #
      # @overload get_by_discord_username(username:, request_options: {})
      #
      # @param username [String]
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::User]
      #
      # @see Privy::Models::UserGetByDiscordUsernameParams
      def get_by_discord_username(params)
        parsed, options = Privy::UserGetByDiscordUsernameParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/users/discord/username",
          body: parsed,
          model: Privy::User,
          options: options
        )
      end

      # Looks up a user by their email address.
      #
      # @overload get_by_email_address(address:, request_options: {})
      #
      # @param address [String]
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::User]
      #
      # @see Privy::Models::UserGetByEmailAddressParams
      def get_by_email_address(params)
        parsed, options = Privy::UserGetByEmailAddressParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/users/email/address",
          body: parsed,
          model: Privy::User,
          options: options
        )
      end

      # Looks up a user by their Farcaster ID.
      #
      # @overload get_by_farcaster_id(fid:, request_options: {})
      #
      # @param fid [Float]
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::User]
      #
      # @see Privy::Models::UserGetByFarcasterIDParams
      def get_by_farcaster_id(params)
        parsed, options = Privy::UserGetByFarcasterIDParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/users/farcaster/fid",
          body: parsed,
          model: Privy::User,
          options: options
        )
      end

      # Looks up a user by their Github username.
      #
      # @overload get_by_github_username(username:, request_options: {})
      #
      # @param username [String]
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::User]
      #
      # @see Privy::Models::UserGetByGitHubUsernameParams
      def get_by_github_username(params)
        parsed, options = Privy::UserGetByGitHubUsernameParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/users/github/username",
          body: parsed,
          model: Privy::User,
          options: options
        )
      end

      # Looks up a user by their phone number.
      #
      # @overload get_by_phone_number(number:, request_options: {})
      #
      # @param number [String]
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::User]
      #
      # @see Privy::Models::UserGetByPhoneNumberParams
      def get_by_phone_number(params)
        parsed, options = Privy::UserGetByPhoneNumberParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/users/phone/number",
          body: parsed,
          model: Privy::User,
          options: options
        )
      end

      # Looks up a user by their smart wallet address.
      #
      # @overload get_by_smart_wallet_address(address:, request_options: {})
      #
      # @param address [String]
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::User]
      #
      # @see Privy::Models::UserGetBySmartWalletAddressParams
      def get_by_smart_wallet_address(params)
        parsed, options = Privy::UserGetBySmartWalletAddressParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/users/smart_wallet/address",
          body: parsed,
          model: Privy::User,
          options: options
        )
      end

      # Looks up a user by their Telegram user ID.
      #
      # @overload get_by_telegram_user_id(telegram_user_id:, request_options: {})
      #
      # @param telegram_user_id [String]
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::User]
      #
      # @see Privy::Models::UserGetByTelegramUserIDParams
      def get_by_telegram_user_id(params)
        parsed, options = Privy::UserGetByTelegramUserIDParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/users/telegram/telegram_user_id",
          body: parsed,
          model: Privy::User,
          options: options
        )
      end

      # Looks up a user by their Telegram username.
      #
      # @overload get_by_telegram_username(username:, request_options: {})
      #
      # @param username [String]
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::User]
      #
      # @see Privy::Models::UserGetByTelegramUsernameParams
      def get_by_telegram_username(params)
        parsed, options = Privy::UserGetByTelegramUsernameParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/users/telegram/username",
          body: parsed,
          model: Privy::User,
          options: options
        )
      end

      # Looks up a user by their Twitter subject.
      #
      # @overload get_by_twitter_subject(subject:, request_options: {})
      #
      # @param subject [String]
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::User]
      #
      # @see Privy::Models::UserGetByTwitterSubjectParams
      def get_by_twitter_subject(params)
        parsed, options = Privy::UserGetByTwitterSubjectParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/users/twitter/subject",
          body: parsed,
          model: Privy::User,
          options: options
        )
      end

      # Looks up a user by their Twitter username.
      #
      # @overload get_by_twitter_username(username:, request_options: {})
      #
      # @param username [String]
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::User]
      #
      # @see Privy::Models::UserGetByTwitterUsernameParams
      def get_by_twitter_username(params)
        parsed, options = Privy::UserGetByTwitterUsernameParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/users/twitter/username",
          body: parsed,
          model: Privy::User,
          options: options
        )
      end

      # Looks up a user by their wallet address.
      #
      # @overload get_by_wallet_address(address:, request_options: {})
      #
      # @param address [String]
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::User]
      #
      # @see Privy::Models::UserGetByWalletAddressParams
      def get_by_wallet_address(params)
        parsed, options = Privy::UserGetByWalletAddressParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/users/wallet/address",
          body: parsed,
          model: Privy::User,
          options: options
        )
      end

      # Creates an embedded wallet for an existing user.
      #
      # @overload pregenerate_wallets(user_id, wallets:, request_options: {})
      #
      # @param user_id [String] ID of the user.
      #
      # @param wallets [Array<Privy::Models::WalletCreationInput>]
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::User]
      #
      # @see Privy::Models::UserPregenerateWalletsParams
      def pregenerate_wallets(user_id, params)
        parsed, options = Privy::UserPregenerateWalletsParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/users/%1$s/wallets", user_id],
          body: parsed,
          model: Privy::User,
          options: options
        )
      end

      # Search users by search term, emails, phone numbers, or wallet addresses.
      #
      # @overload search(body:, request_options: {})
      #
      # @param body [Privy::Models::UserSearchParams::Body::SearchTerm, Privy::Models::UserSearchParams::Body::UnionMember1]
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::User]
      #
      # @see Privy::Models::UserSearchParams
      def search(params)
        parsed, options = Privy::UserSearchParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/users/search",
          body: parsed[:body],
          model: Privy::User,
          options: options
        )
      end

      # Adds custom metadata to a user by user ID.
      #
      # @overload set_custom_metadata(user_id, custom_metadata:, request_options: {})
      #
      # @param user_id [String] ID of the user.
      #
      # @param custom_metadata [Hash{Symbol=>String, Float, Boolean}] Custom metadata associated with the user.
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::User]
      #
      # @see Privy::Models::UserSetCustomMetadataParams
      def set_custom_metadata(user_id, params)
        parsed, options = Privy::UserSetCustomMetadataParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/users/%1$s/custom_metadata", user_id],
          body: parsed,
          model: Privy::User,
          options: options
        )
      end

      # Unlinks a user linked account.
      #
      # @overload unlink_linked_account(user_id, handle:, type:, provider: nil, request_options: {})
      #
      # @param user_id [String] ID of the user.
      #
      # @param handle [String]
      #
      # @param type [Symbol, String, Privy::Models::LinkedAccountType] The possible types of linked accounts.
      #
      # @param provider [String]
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::User]
      #
      # @see Privy::Models::UserUnlinkLinkedAccountParams
      def unlink_linked_account(user_id, params)
        parsed, options = Privy::UserUnlinkLinkedAccountParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/users/%1$s/accounts/unlink", user_id],
          body: parsed,
          model: Privy::User,
          options: options
        )
      end

      # @api private
      #
      # @param client [Privy::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
