# frozen_string_literal: true

module Privy
  module Models
    class EmbeddedWalletInputSchema < Privy::Internal::Type::BaseModel
      # @!attribute create_on_login
      #   Whether to create embedded wallets on login.
      #
      #   @return [Symbol, Privy::Models::EmbeddedWalletCreateOnLogin]
      required :create_on_login, enum: -> { Privy::EmbeddedWalletCreateOnLogin }

      # @!attribute ethereum
      #   Chain-specific configuration for embedded wallets.
      #
      #   @return [Privy::Models::EmbeddedWalletChainConfig]
      required :ethereum, -> { Privy::EmbeddedWalletChainConfig }

      # @!attribute solana
      #   Chain-specific configuration for embedded wallets.
      #
      #   @return [Privy::Models::EmbeddedWalletChainConfig]
      required :solana, -> { Privy::EmbeddedWalletChainConfig }

      # @!attribute user_owned_recovery_options
      #
      #   @return [Array<Symbol, Privy::Models::UserOwnedRecoveryOption>]
      required :user_owned_recovery_options,
               -> { Privy::Internal::Type::ArrayOf[enum: Privy::UserOwnedRecoveryOption] }

      # @!attribute require_user_owned_recovery_on_create
      #
      #   @return [Boolean, nil]
      optional :require_user_owned_recovery_on_create, Privy::Internal::Type::Boolean

      # @!attribute require_user_password_on_create
      #
      #   @return [Boolean, nil]
      optional :require_user_password_on_create, Privy::Internal::Type::Boolean

      # @!method initialize(create_on_login:, ethereum:, solana:, user_owned_recovery_options:, require_user_owned_recovery_on_create: nil, require_user_password_on_create: nil)
      #   Input configuration for embedded wallets.
      #
      #   @param create_on_login [Symbol, Privy::Models::EmbeddedWalletCreateOnLogin] Whether to create embedded wallets on login.
      #
      #   @param ethereum [Privy::Models::EmbeddedWalletChainConfig] Chain-specific configuration for embedded wallets.
      #
      #   @param solana [Privy::Models::EmbeddedWalletChainConfig] Chain-specific configuration for embedded wallets.
      #
      #   @param user_owned_recovery_options [Array<Symbol, Privy::Models::UserOwnedRecoveryOption>]
      #
      #   @param require_user_owned_recovery_on_create [Boolean]
      #
      #   @param require_user_password_on_create [Boolean]
    end
  end
end
