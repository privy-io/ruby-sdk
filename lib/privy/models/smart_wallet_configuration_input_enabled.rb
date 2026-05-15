# frozen_string_literal: true

module Privy
  module Models
    class SmartWalletConfigurationInputEnabled < Privy::Internal::Type::BaseModel
      # @!attribute configured_networks
      #
      #   @return [Array<Privy::Models::SmartWalletNetworkConfigurationInput>]
      required :configured_networks,
               -> { Privy::Internal::Type::ArrayOf[Privy::SmartWalletNetworkConfigurationInput] }

      # @!attribute enabled
      #
      #   @return [Boolean, Privy::Models::SmartWalletConfigurationInputEnabled::Enabled]
      required :enabled, enum: -> { Privy::SmartWalletConfigurationInputEnabled::Enabled }

      # @!attribute smart_wallet_type
      #   The supported smart wallet providers.
      #
      #   @return [Symbol, Privy::Models::SmartWalletType]
      required :smart_wallet_type, enum: -> { Privy::SmartWalletType }

      # @!attribute smart_wallet_version
      #
      #   @return [String, nil]
      optional :smart_wallet_version, String, nil?: true

      # @!method initialize(configured_networks:, enabled:, smart_wallet_type:, smart_wallet_version: nil)
      #   An enabled smart wallet configuration input.
      #
      #   @param configured_networks [Array<Privy::Models::SmartWalletNetworkConfigurationInput>]
      #
      #   @param enabled [Boolean, Privy::Models::SmartWalletConfigurationInputEnabled::Enabled]
      #
      #   @param smart_wallet_type [Symbol, Privy::Models::SmartWalletType] The supported smart wallet providers.
      #
      #   @param smart_wallet_version [String, nil]

      # @see Privy::Models::SmartWalletConfigurationInputEnabled#enabled
      module Enabled
        extend Privy::Internal::Type::Enum

        TRUE = true

        # @!method self.values
        #   @return [Array<Boolean>]
      end
    end
  end
end
