# typed: strong

module Privy
  module Models
    class OrganizationDefaultWalletConfigurationsUpdate < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::OrganizationDefaultWalletConfigurationsUpdate,
            Privy::Internal::AnyHash
          )
        end

      # Default policies and additional signers for wallets of one chain type.
      sig { returns(T.nilable(Privy::OrganizationWalletConfiguration)) }
      attr_reader :ethereum

      sig do
        params(
          ethereum: T.nilable(Privy::OrganizationWalletConfiguration::OrHash)
        ).void
      end
      attr_writer :ethereum

      # Default policies and additional signers for wallets of one chain type.
      sig { returns(T.nilable(Privy::OrganizationWalletConfiguration)) }
      attr_reader :solana

      sig do
        params(
          solana: T.nilable(Privy::OrganizationWalletConfiguration::OrHash)
        ).void
      end
      attr_writer :solana

      # Default policies and additional signers for wallets of one chain type.
      sig { returns(T.nilable(Privy::OrganizationWalletConfiguration)) }
      attr_reader :tron

      sig do
        params(
          tron: T.nilable(Privy::OrganizationWalletConfiguration::OrHash)
        ).void
      end
      attr_writer :tron

      # Changes to the defaults, keyed by chain type. Omitted chains and fields are
      # unchanged, and `null` removes a chain.
      sig do
        params(
          ethereum: T.nilable(Privy::OrganizationWalletConfiguration::OrHash),
          solana: T.nilable(Privy::OrganizationWalletConfiguration::OrHash),
          tron: T.nilable(Privy::OrganizationWalletConfiguration::OrHash)
        ).returns(T.attached_class)
      end
      def self.new(
        # Default policies and additional signers for wallets of one chain type.
        ethereum: nil,
        # Default policies and additional signers for wallets of one chain type.
        solana: nil,
        # Default policies and additional signers for wallets of one chain type.
        tron: nil
      )
      end

      sig do
        override.returns(
          {
            ethereum: T.nilable(Privy::OrganizationWalletConfiguration),
            solana: T.nilable(Privy::OrganizationWalletConfiguration),
            tron: T.nilable(Privy::OrganizationWalletConfiguration)
          }
        )
      end
      def to_hash
      end
    end
  end
end
