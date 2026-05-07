# frozen_string_literal: true

module Privy
  module Models
    class UserBatchCreateInput < Privy::Internal::Type::BaseModel
      # @!attribute users
      #
      #   @return [Array<Privy::Models::UserBatchCreateInput::User>]
      required :users, -> { Privy::Internal::Type::ArrayOf[Privy::UserBatchCreateInput::User] }

      # @!method initialize(users:)
      #   The payload for batch creating users.
      #
      #   @param users [Array<Privy::Models::UserBatchCreateInput::User>]

      class User < Privy::Internal::Type::BaseModel
        # @!attribute linked_accounts
        #
        #   @return [Array<Privy::Models::LinkedAccountWalletInput, Privy::Models::LinkedAccountEmailInput, Privy::Models::LinkedAccountPhoneInput, Privy::Models::LinkedAccountGoogleInput, Privy::Models::LinkedAccountTwitterInput, Privy::Models::LinkedAccountDiscordInput, Privy::Models::LinkedAccountGitHubInput, Privy::Models::LinkedAccountSpotifyInput, Privy::Models::LinkedAccountInstagramInput, Privy::Models::LinkedAccountTiktokInput, Privy::Models::LinkedAccountLineInput, Privy::Models::LinkedAccountTwitchInput, Privy::Models::LinkedAccountAppleInput, Privy::Models::LinkedAccountLinkedInInput, Privy::Models::LinkedAccountFarcasterInput, Privy::Models::LinkedAccountTelegramInput, Privy::Models::LinkedAccountCustomJwtInput, Privy::Models::LinkedAccountPasskeyInput>]
        required :linked_accounts, -> { Privy::Internal::Type::ArrayOf[union: Privy::LinkedAccountInput] }

        # @!attribute create_embedded_wallet
        #
        #   @return [Boolean, nil]
        optional :create_embedded_wallet, Privy::Internal::Type::Boolean

        # @!attribute create_ethereum_smart_wallet
        #
        #   @return [Boolean, nil]
        optional :create_ethereum_smart_wallet, Privy::Internal::Type::Boolean

        # @!attribute create_ethereum_wallet
        #
        #   @return [Boolean, nil]
        optional :create_ethereum_wallet, Privy::Internal::Type::Boolean

        # @!attribute create_n_embedded_wallets
        #
        #   @return [Float, nil]
        optional :create_n_embedded_wallets, Float

        # @!attribute create_n_ethereum_wallets
        #
        #   @return [Float, nil]
        optional :create_n_ethereum_wallets, Float

        # @!attribute create_solana_wallet
        #
        #   @return [Boolean, nil]
        optional :create_solana_wallet, Privy::Internal::Type::Boolean

        # @!attribute custom_metadata
        #   Custom metadata associated with the user.
        #
        #   @return [Hash{Symbol=>String, Float, Boolean}, nil]
        optional :custom_metadata, -> { Privy::Internal::Type::HashOf[union: Privy::CustomMetadataItem] }

        # @!attribute wallets
        #   Wallets to create.
        #
        #   @return [Array<Privy::Models::WalletCreationInput>, nil]
        optional :wallets, -> { Privy::Internal::Type::ArrayOf[Privy::WalletCreationInput] }

        # @!method initialize(linked_accounts:, create_embedded_wallet: nil, create_ethereum_smart_wallet: nil, create_ethereum_wallet: nil, create_n_embedded_wallets: nil, create_n_ethereum_wallets: nil, create_solana_wallet: nil, custom_metadata: nil, wallets: nil)
        #   @param linked_accounts [Array<Privy::Models::LinkedAccountWalletInput, Privy::Models::LinkedAccountEmailInput, Privy::Models::LinkedAccountPhoneInput, Privy::Models::LinkedAccountGoogleInput, Privy::Models::LinkedAccountTwitterInput, Privy::Models::LinkedAccountDiscordInput, Privy::Models::LinkedAccountGitHubInput, Privy::Models::LinkedAccountSpotifyInput, Privy::Models::LinkedAccountInstagramInput, Privy::Models::LinkedAccountTiktokInput, Privy::Models::LinkedAccountLineInput, Privy::Models::LinkedAccountTwitchInput, Privy::Models::LinkedAccountAppleInput, Privy::Models::LinkedAccountLinkedInInput, Privy::Models::LinkedAccountFarcasterInput, Privy::Models::LinkedAccountTelegramInput, Privy::Models::LinkedAccountCustomJwtInput, Privy::Models::LinkedAccountPasskeyInput>]
        #
        #   @param create_embedded_wallet [Boolean]
        #
        #   @param create_ethereum_smart_wallet [Boolean]
        #
        #   @param create_ethereum_wallet [Boolean]
        #
        #   @param create_n_embedded_wallets [Float]
        #
        #   @param create_n_ethereum_wallets [Float]
        #
        #   @param create_solana_wallet [Boolean]
        #
        #   @param custom_metadata [Hash{Symbol=>String, Float, Boolean}] Custom metadata associated with the user.
        #
        #   @param wallets [Array<Privy::Models::WalletCreationInput>] Wallets to create.
      end
    end
  end
end
