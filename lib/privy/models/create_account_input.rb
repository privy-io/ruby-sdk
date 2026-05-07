# frozen_string_literal: true

module Privy
  module Models
    # Input for creating a digital asset account.
    module CreateAccountInput
      extend Privy::Internal::Type::Union

      # Input for creating a digital asset account from new wallets with a `wallets_configuration` specification.
      variant -> { Privy::CreateAccountFromWalletsConfigurationInput }

      # Input for creating a digital asset account from existing wallets with a `wallet_ids` parameter.
      variant -> { Privy::CreateAccountFromWalletIDsInput }

      # @!method self.variants
      #   @return [Array(Privy::Models::CreateAccountFromWalletsConfigurationInput, Privy::Models::CreateAccountFromWalletIDsInput)]
    end
  end
end
