# frozen_string_literal: true

module Privy
  module Models
    # The input configuration object for smart wallets.
    module SmartWalletConfigurationInput
      extend Privy::Internal::Type::Union

      # A disabled smart wallet configuration.
      variant -> { Privy::SmartWalletConfigurationDisabled }

      # An enabled smart wallet configuration input.
      variant -> { Privy::SmartWalletConfigurationInputEnabled }

      # @!method self.variants
      #   @return [Array(Privy::Models::SmartWalletConfigurationDisabled, Privy::Models::SmartWalletConfigurationInputEnabled)]
    end
  end
end
