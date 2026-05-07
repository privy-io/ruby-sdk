# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Wallets#create_wallets_with_recovery
    class WalletCreateWalletsWithRecoveryParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      # @!attribute primary_signer
      #
      #   @return [Privy::Models::WalletCreateWalletsWithRecoveryParams::PrimarySigner]
      required :primary_signer, -> { Privy::WalletCreateWalletsWithRecoveryParams::PrimarySigner }

      # @!attribute recovery_user
      #
      #   @return [Privy::Models::WalletCreateWalletsWithRecoveryParams::RecoveryUser]
      required :recovery_user, -> { Privy::WalletCreateWalletsWithRecoveryParams::RecoveryUser }

      # @!attribute wallets
      #
      #   @return [Array<Privy::Models::WalletCreateWalletsWithRecoveryParams::Wallet>]
      required :wallets,
               -> { Privy::Internal::Type::ArrayOf[Privy::WalletCreateWalletsWithRecoveryParams::Wallet] }

      # @!method initialize(primary_signer:, recovery_user:, wallets:, request_options: {})
      #   @param primary_signer [Privy::Models::WalletCreateWalletsWithRecoveryParams::PrimarySigner]
      #   @param recovery_user [Privy::Models::WalletCreateWalletsWithRecoveryParams::RecoveryUser]
      #   @param wallets [Array<Privy::Models::WalletCreateWalletsWithRecoveryParams::Wallet>]
      #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]

      class PrimarySigner < Privy::Internal::Type::BaseModel
        # @!attribute subject_id
        #   The JWT subject ID of the user.
        #
        #   @return [String]
        required :subject_id, String

        # @!method initialize(subject_id:)
        #   @param subject_id [String] The JWT subject ID of the user.
      end

      class RecoveryUser < Privy::Internal::Type::BaseModel
        # @!attribute linked_accounts
        #
        #   @return [Array<Privy::Models::LinkedAccountEmailInput, Privy::Models::LinkedAccountCustomJwtInput>]
        required :linked_accounts,
                 -> { Privy::Internal::Type::ArrayOf[union: Privy::WalletCreateWalletsWithRecoveryParams::RecoveryUser::LinkedAccount] }

        # @!method initialize(linked_accounts:)
        #   @param linked_accounts [Array<Privy::Models::LinkedAccountEmailInput, Privy::Models::LinkedAccountCustomJwtInput>]

        # The payload for importing an email account.
        module LinkedAccount
          extend Privy::Internal::Type::Union

          discriminator :type

          # The payload for importing an email account.
          variant :email, -> { Privy::LinkedAccountEmailInput }

          # The payload for importing a Custom JWT account.
          variant :custom_auth, -> { Privy::LinkedAccountCustomJwtInput }

          # @!method self.variants
          #   @return [Array(Privy::Models::LinkedAccountEmailInput, Privy::Models::LinkedAccountCustomJwtInput)]
        end
      end

      class Wallet < Privy::Internal::Type::BaseModel
        # @!attribute chain_type
        #   The wallet chain types.
        #
        #   @return [Symbol, Privy::Models::WalletChainType]
        required :chain_type, enum: -> { Privy::WalletChainType }

        # @!attribute display_name
        #   A human-readable label for the wallet.
        #
        #   @return [String, nil]
        optional :display_name, String

        # @!attribute external_id
        #   A customer-provided identifier for mapping to external systems. URL-safe
        #   characters only ([a-zA-Z0-9_-]), max 64 chars. Write-once: cannot be changed
        #   after creation.
        #
        #   @return [String, nil]
        optional :external_id, String

        # @!attribute policy_ids
        #   An optional list of up to one policy ID to enforce on the wallet.
        #
        #   @return [Array<String>, nil]
        optional :policy_ids, Privy::Internal::Type::ArrayOf[String]

        # @!method initialize(chain_type:, display_name: nil, external_id: nil, policy_ids: nil)
        #   Some parameter documentations has been truncated, see
        #   {Privy::Models::WalletCreateWalletsWithRecoveryParams::Wallet} for more details.
        #
        #   @param chain_type [Symbol, Privy::Models::WalletChainType] The wallet chain types.
        #
        #   @param display_name [String] A human-readable label for the wallet.
        #
        #   @param external_id [String] A customer-provided identifier for mapping to external systems. URL-safe charact
        #
        #   @param policy_ids [Array<String>] An optional list of up to one policy ID to enforce on the wallet.
      end
    end
  end
end
