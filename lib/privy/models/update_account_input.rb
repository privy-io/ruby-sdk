# frozen_string_literal: true

module Privy
  module Models
    # Input for updating a digital asset account.
    module UpdateAccountInput
      extend Privy::Internal::Type::Union

      # Input for updating a digital asset account with a `wallets_configuration` specification.
      variant -> { Privy::UpdateAccountFromWalletsConfigurationInput }

      # Input for updating a digital asset account by adding existing wallets with a `wallet_ids` parameter.
      variant -> { Privy::UpdateAccountFromWalletIDsInput }

      # @!method self.variants
      #   @return [Array(Privy::Models::UpdateAccountFromWalletsConfigurationInput, Privy::Models::UpdateAccountFromWalletIDsInput)]
    end
  end
end
