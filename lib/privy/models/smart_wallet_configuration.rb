# frozen_string_literal: true

module Privy
  module Models
    # The configuration object for smart wallets.
    module SmartWalletConfiguration
      extend Privy::Internal::Type::Union

      # A disabled smart wallet configuration.
      variant -> { Privy::SmartWalletConfigurationDisabled }

      # An enabled smart wallet configuration.
      variant -> { Privy::SmartWalletConfigurationEnabled }

      # @!method self.variants
      #   @return [Array(Privy::Models::SmartWalletConfigurationDisabled, Privy::Models::SmartWalletConfigurationEnabled)]
    end
  end
end
