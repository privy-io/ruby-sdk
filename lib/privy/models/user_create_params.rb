# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Users#create
    class UserCreateParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      # @!attribute linked_accounts
      #
      #   @return [Array<Privy::Models::LinkedAccountWalletInput, Privy::Models::LinkedAccountEmailInput, Privy::Models::LinkedAccountPhoneInput, Privy::Models::LinkedAccountGoogleInput, Privy::Models::LinkedAccountTwitterInput, Privy::Models::LinkedAccountDiscordInput, Privy::Models::LinkedAccountGitHubInput, Privy::Models::LinkedAccountSpotifyInput, Privy::Models::LinkedAccountInstagramInput, Privy::Models::LinkedAccountTiktokInput, Privy::Models::LinkedAccountLineInput, Privy::Models::LinkedAccountTwitchInput, Privy::Models::LinkedAccountAppleInput, Privy::Models::LinkedAccountLinkedInInput, Privy::Models::LinkedAccountFarcasterInput, Privy::Models::LinkedAccountTelegramInput, Privy::Models::LinkedAccountCustomJwtInput, Privy::Models::LinkedAccountPasskeyInput>]
      required :linked_accounts, -> { Privy::Internal::Type::ArrayOf[union: Privy::LinkedAccountInput] }

      # @!attribute custom_metadata
      #   Custom metadata associated with the user.
      #
      #   @return [Hash{Symbol=>String, Float, Boolean}, nil]
      optional :custom_metadata, -> { Privy::Internal::Type::HashOf[union: Privy::CustomMetadataItem] }

      # @!attribute wallets
      #   Wallets to create for the user.
      #
      #   @return [Array<Privy::Models::UserCreateParams::Wallet>, nil]
      optional :wallets, -> { Privy::Internal::Type::ArrayOf[Privy::UserCreateParams::Wallet] }

      # @!method initialize(linked_accounts:, custom_metadata: nil, wallets: nil, request_options: {})
      #   @param linked_accounts [Array<Privy::Models::LinkedAccountWalletInput, Privy::Models::LinkedAccountEmailInput, Privy::Models::LinkedAccountPhoneInput, Privy::Models::LinkedAccountGoogleInput, Privy::Models::LinkedAccountTwitterInput, Privy::Models::LinkedAccountDiscordInput, Privy::Models::LinkedAccountGitHubInput, Privy::Models::LinkedAccountSpotifyInput, Privy::Models::LinkedAccountInstagramInput, Privy::Models::LinkedAccountTiktokInput, Privy::Models::LinkedAccountLineInput, Privy::Models::LinkedAccountTwitchInput, Privy::Models::LinkedAccountAppleInput, Privy::Models::LinkedAccountLinkedInInput, Privy::Models::LinkedAccountFarcasterInput, Privy::Models::LinkedAccountTelegramInput, Privy::Models::LinkedAccountCustomJwtInput, Privy::Models::LinkedAccountPasskeyInput>]
      #
      #   @param custom_metadata [Hash{Symbol=>String, Float, Boolean}] Custom metadata associated with the user.
      #
      #   @param wallets [Array<Privy::Models::UserCreateParams::Wallet>] Wallets to create for the user.
      #
      #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]

      class Wallet < Privy::Internal::Type::BaseModel
        # @!attribute chain_type
        #   The wallet chain types.
        #
        #   @return [Symbol, Privy::Models::WalletChainType]
        required :chain_type, enum: -> { Privy::WalletChainType }

        # @!attribute additional_signers
        #   Additional signers for the wallet.
        #
        #   @return [Array<Privy::Models::UserCreateParams::Wallet::AdditionalSigner>, nil]
        optional :additional_signers,
                 -> { Privy::Internal::Type::ArrayOf[Privy::UserCreateParams::Wallet::AdditionalSigner] }

        # @!attribute create_smart_wallet
        #   Create a smart wallet with this wallet as the signer. Only supported for wallets
        #   with `chain_type: "ethereum"`.
        #
        #   @return [Boolean, nil]
        optional :create_smart_wallet, Privy::Internal::Type::Boolean

        # @!attribute policy_ids
        #   Policy IDs to enforce on the wallet. Currently, only one policy is supported per
        #   wallet.
        #
        #   @return [Array<String>, nil]
        optional :policy_ids, Privy::Internal::Type::ArrayOf[String]

        # @!method initialize(chain_type:, additional_signers: nil, create_smart_wallet: nil, policy_ids: nil)
        #   Some parameter documentations has been truncated, see
        #   {Privy::Models::UserCreateParams::Wallet} for more details.
        #
        #   @param chain_type [Symbol, Privy::Models::WalletChainType] The wallet chain types.
        #
        #   @param additional_signers [Array<Privy::Models::UserCreateParams::Wallet::AdditionalSigner>] Additional signers for the wallet.
        #
        #   @param create_smart_wallet [Boolean] Create a smart wallet with this wallet as the signer. Only supported for wallets
        #
        #   @param policy_ids [Array<String>] Policy IDs to enforce on the wallet. Currently, only one policy is supported per

        class AdditionalSigner < Privy::Internal::Type::BaseModel
          # @!attribute signer_id
          #   A unique identifier for a key quorum.
          #
          #   @return [String]
          required :signer_id, String

          # @!attribute override_policy_ids
          #   The array of policy IDs that will be applied to wallet requests. If specified,
          #   this will override the base policy IDs set on the wallet. Currently, only one
          #   policy is supported per signer.
          #
          #   @return [Array<String>, nil]
          optional :override_policy_ids, Privy::Internal::Type::ArrayOf[String]

          # @!method initialize(signer_id:, override_policy_ids: nil)
          #   Some parameter documentations has been truncated, see
          #   {Privy::Models::UserCreateParams::Wallet::AdditionalSigner} for more details.
          #
          #   @param signer_id [String] A unique identifier for a key quorum.
          #
          #   @param override_policy_ids [Array<String>] The array of policy IDs that will be applied to wallet requests. If specified, t
        end
      end
    end
  end
end
