# frozen_string_literal: true

module Privy
  module Models
    class SmartWalletConfigurationEnabled < Privy::Internal::Type::BaseModel
      # @!attribute configured_networks
      #
      #   @return [Array<Privy::Models::SmartWalletNetworkConfiguration>]
      required :configured_networks,
               -> { Privy::Internal::Type::ArrayOf[Privy::SmartWalletNetworkConfiguration] }

      # @!attribute enabled
      #
      #   @return [Boolean, Privy::Models::SmartWalletConfigurationEnabled::Enabled]
      required :enabled, enum: -> { Privy::SmartWalletConfigurationEnabled::Enabled }

      # @!attribute smart_wallet_type
      #   The supported smart wallet providers.
      #
      #   @return [Symbol, Privy::Models::SmartWalletType]
      required :smart_wallet_type, enum: -> { Privy::SmartWalletType }

      # @!attribute smart_wallet_version
      #
      #   @return [String, nil]
      optional :smart_wallet_version, String

      # @!method initialize(configured_networks:, enabled:, smart_wallet_type:, smart_wallet_version: nil)
      #   An enabled smart wallet configuration.
      #
      #   @param configured_networks [Array<Privy::Models::SmartWalletNetworkConfiguration>]
      #
      #   @param enabled [Boolean, Privy::Models::SmartWalletConfigurationEnabled::Enabled]
      #
      #   @param smart_wallet_type [Symbol, Privy::Models::SmartWalletType] The supported smart wallet providers.
      #
      #   @param smart_wallet_version [String]

      # @see Privy::Models::SmartWalletConfigurationEnabled#enabled
      module Enabled
        extend Privy::Internal::Type::Enum

        TRUE = true

        # @!method self.values
        #   @return [Array<Boolean>]
      end
    end
  end
end
