# frozen_string_literal: true

module Privy
  module Models
    class OrganizationDefaultWalletConfigurations < Privy::Internal::Type::BaseModel
      # @!attribute ethereum
      #   Default policies and additional signers for wallets of one chain type.
      #
      #   @return [Privy::Models::OrganizationWalletConfiguration, nil]
      optional :ethereum, -> { Privy::OrganizationWalletConfiguration }

      # @!attribute solana
      #   Default policies and additional signers for wallets of one chain type.
      #
      #   @return [Privy::Models::OrganizationWalletConfiguration, nil]
      optional :solana, -> { Privy::OrganizationWalletConfiguration }

      # @!attribute tron
      #   Default policies and additional signers for wallets of one chain type.
      #
      #   @return [Privy::Models::OrganizationWalletConfiguration, nil]
      optional :tron, -> { Privy::OrganizationWalletConfiguration }

      # @!method initialize(ethereum: nil, solana: nil, tron: nil)
      #   Defaults applied to wallets created with the organization as their entity, keyed
      #   by chain type.
      #
      #   @param ethereum [Privy::Models::OrganizationWalletConfiguration] Default policies and additional signers for wallets of one chain type.
      #
      #   @param solana [Privy::Models::OrganizationWalletConfiguration] Default policies and additional signers for wallets of one chain type.
      #
      #   @param tron [Privy::Models::OrganizationWalletConfiguration] Default policies and additional signers for wallets of one chain type.
    end
  end
end
