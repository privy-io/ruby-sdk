# frozen_string_literal: true

module Privy
  module Models
    class UpdateAccountFromWalletsConfigurationInput < Privy::Internal::Type::BaseModel
      # @!attribute display_name
      #   An optional display name for the account.
      #
      #   @return [String, nil]
      optional :display_name, String

      # @!attribute wallets_configuration
      #   Configuration for the wallets on this account.
      #
      #   @return [Array<Privy::Models::AccountWalletConfigurationItem>, nil]
      optional :wallets_configuration,
               -> { Privy::Internal::Type::ArrayOf[Privy::AccountWalletConfigurationItem] }

      # @!method initialize(display_name: nil, wallets_configuration: nil)
      #   Input for updating a digital asset account with a `wallets_configuration`
      #   specification.
      #
      #   @param display_name [String] An optional display name for the account.
      #
      #   @param wallets_configuration [Array<Privy::Models::AccountWalletConfigurationItem>] Configuration for the wallets on this account.
    end
  end
end
