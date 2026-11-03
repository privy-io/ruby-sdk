# frozen_string_literal: true

module Privy
  module Models
    class OrganizationDefaultWalletConfigurationsUpdate < Privy::Internal::Type::BaseModel
      # @!attribute ethereum
      #   Default policies and additional signers for wallets of one chain type.
      #
      #   @return [Privy::Models::OrganizationWalletConfiguration, nil]
      optional :ethereum, -> { Privy::OrganizationWalletConfiguration }, nil?: true

      # @!attribute solana
      #   Default policies and additional signers for wallets of one chain type.
      #
      #   @return [Privy::Models::OrganizationWalletConfiguration, nil]
      optional :solana, -> { Privy::OrganizationWalletConfiguration }, nil?: true

      # @!attribute tron
      #   Default policies and additional signers for wallets of one chain type.
      #
      #   @return [Privy::Models::OrganizationWalletConfiguration, nil]
      optional :tron, -> { Privy::OrganizationWalletConfiguration }, nil?: true

      # @!method initialize(ethereum: nil, solana: nil, tron: nil)
      #   Changes to the defaults, keyed by chain type. Omitted chains and fields are
      #   unchanged, and `null` removes a chain.
      #
      #   @param ethereum [Privy::Models::OrganizationWalletConfiguration, nil] Default policies and additional signers for wallets of one chain type.
      #
      #   @param solana [Privy::Models::OrganizationWalletConfiguration, nil] Default policies and additional signers for wallets of one chain type.
      #
      #   @param tron [Privy::Models::OrganizationWalletConfiguration, nil] Default policies and additional signers for wallets of one chain type.
    end
  end
end
