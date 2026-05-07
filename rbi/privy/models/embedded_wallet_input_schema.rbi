# typed: strong

module Privy
  module Models
    class EmbeddedWalletInputSchema < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::EmbeddedWalletInputSchema, Privy::Internal::AnyHash)
        end

      # Whether to create embedded wallets on login.
      sig { returns(Privy::EmbeddedWalletCreateOnLogin::TaggedSymbol) }
      attr_accessor :create_on_login

      # Chain-specific configuration for embedded wallets.
      sig { returns(Privy::EmbeddedWalletChainConfig) }
      attr_reader :ethereum

      sig { params(ethereum: Privy::EmbeddedWalletChainConfig::OrHash).void }
      attr_writer :ethereum

      # Chain-specific configuration for embedded wallets.
      sig { returns(Privy::EmbeddedWalletChainConfig) }
      attr_reader :solana

      sig { params(solana: Privy::EmbeddedWalletChainConfig::OrHash).void }
      attr_writer :solana

      sig { returns(T::Array[Privy::UserOwnedRecoveryOption::TaggedSymbol]) }
      attr_accessor :user_owned_recovery_options

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :require_user_owned_recovery_on_create

      sig { params(require_user_owned_recovery_on_create: T::Boolean).void }
      attr_writer :require_user_owned_recovery_on_create

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :require_user_password_on_create

      sig { params(require_user_password_on_create: T::Boolean).void }
      attr_writer :require_user_password_on_create

      # Input configuration for embedded wallets.
      sig do
        params(
          create_on_login: Privy::EmbeddedWalletCreateOnLogin::OrSymbol,
          ethereum: Privy::EmbeddedWalletChainConfig::OrHash,
          solana: Privy::EmbeddedWalletChainConfig::OrHash,
          user_owned_recovery_options:
            T::Array[Privy::UserOwnedRecoveryOption::OrSymbol],
          require_user_owned_recovery_on_create: T::Boolean,
          require_user_password_on_create: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        # Whether to create embedded wallets on login.
        create_on_login:,
        # Chain-specific configuration for embedded wallets.
        ethereum:,
        # Chain-specific configuration for embedded wallets.
        solana:,
        user_owned_recovery_options:,
        require_user_owned_recovery_on_create: nil,
        require_user_password_on_create: nil
      )
      end

      sig do
        override.returns(
          {
            create_on_login: Privy::EmbeddedWalletCreateOnLogin::TaggedSymbol,
            ethereum: Privy::EmbeddedWalletChainConfig,
            solana: Privy::EmbeddedWalletChainConfig,
            user_owned_recovery_options:
              T::Array[Privy::UserOwnedRecoveryOption::TaggedSymbol],
            require_user_owned_recovery_on_create: T::Boolean,
            require_user_password_on_create: T::Boolean
          }
        )
      end
      def to_hash
      end
    end
  end
end
