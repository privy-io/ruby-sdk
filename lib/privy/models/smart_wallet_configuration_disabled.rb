# frozen_string_literal: true

module Privy
  module Models
    class SmartWalletConfigurationDisabled < Privy::Internal::Type::BaseModel
      # @!attribute enabled
      #
      #   @return [Boolean, Privy::Models::SmartWalletConfigurationDisabled::Enabled]
      required :enabled, enum: -> { Privy::SmartWalletConfigurationDisabled::Enabled }

      # @!method initialize(enabled:)
      #   A disabled smart wallet configuration.
      #
      #   @param enabled [Boolean, Privy::Models::SmartWalletConfigurationDisabled::Enabled]

      # @see Privy::Models::SmartWalletConfigurationDisabled#enabled
      module Enabled
        extend Privy::Internal::Type::Enum

        FALSE = false

        # @!method self.values
        #   @return [Array<Boolean>]
      end
    end
  end
end
