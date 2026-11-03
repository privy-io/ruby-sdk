# typed: strong

module Privy
  module Models
    class OrganizationDefaultWalletConfigurations < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::OrganizationDefaultWalletConfigurations,
            Privy::Internal::AnyHash
          )
        end

      # Default policies and additional signers for wallets of one chain type.
      sig { returns(T.nilable(Privy::OrganizationWalletConfiguration)) }
      attr_reader :ethereum

      sig do
        params(ethereum: Privy::OrganizationWalletConfiguration::OrHash).void
      end
      attr_writer :ethereum

      # Default policies and additional signers for wallets of one chain type.
      sig { returns(T.nilable(Privy::OrganizationWalletConfiguration)) }
      attr_reader :solana

      sig do
        params(solana: Privy::OrganizationWalletConfiguration::OrHash).void
      end
      attr_writer :solana

      # Default policies and additional signers for wallets of one chain type.
      sig { returns(T.nilable(Privy::OrganizationWalletConfiguration)) }
      attr_reader :tron

      sig { params(tron: Privy::OrganizationWalletConfiguration::OrHash).void }
      attr_writer :tron

      # Defaults applied to wallets created with the organization as their entity, keyed
      # by chain type.
      sig do
        params(
          ethereum: Privy::OrganizationWalletConfiguration::OrHash,
          solana: Privy::OrganizationWalletConfiguration::OrHash,
          tron: Privy::OrganizationWalletConfiguration::OrHash
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
            ethereum: Privy::OrganizationWalletConfiguration,
            solana: Privy::OrganizationWalletConfiguration,
            tron: Privy::OrganizationWalletConfiguration
          }
        )
      end
      def to_hash
      end
    end
  end
end
