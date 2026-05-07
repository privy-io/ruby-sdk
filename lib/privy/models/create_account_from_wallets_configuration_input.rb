# frozen_string_literal: true

module Privy
  module Models
    class CreateAccountFromWalletsConfigurationInput < Privy::Internal::Type::BaseModel
      # @!attribute wallets_configuration
      #   Configuration for the wallets on this account.
      #
      #   @return [Array<Privy::Models::AccountWalletConfigurationItem>]
      required :wallets_configuration,
               -> { Privy::Internal::Type::ArrayOf[Privy::AccountWalletConfigurationItem] }

      # @!attribute display_name
      #   An optional display name for the account.
      #
      #   @return [String, nil]
      optional :display_name, String

      # @!method initialize(wallets_configuration:, display_name: nil)
      #   Input for creating a digital asset account from new wallets with a
      #   `wallets_configuration` specification.
      #
      #   @param wallets_configuration [Array<Privy::Models::AccountWalletConfigurationItem>] Configuration for the wallets on this account.
      #
      #   @param display_name [String] An optional display name for the account.
    end
  end
end
