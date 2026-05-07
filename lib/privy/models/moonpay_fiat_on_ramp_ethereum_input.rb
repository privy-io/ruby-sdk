# frozen_string_literal: true

module Privy
  module Models
    class MoonpayFiatOnRampEthereumInput < Privy::Internal::Type::BaseModel
      # @!attribute address
      #
      #   @return [String]
      required :address, String

      # @!attribute config
      #   Configuration for a Moonpay fiat on-ramp for an Ethereum-compatible chain.
      #
      #   @return [Privy::Models::MoonpayFiatOnRampEthereumConfig]
      required :config, -> { Privy::MoonpayFiatOnRampEthereumConfig }

      # @!method initialize(address:, config:)
      #   Input for a Moonpay fiat on-ramp for an Ethereum-compatible chain.
      #
      #   @param address [String]
      #
      #   @param config [Privy::Models::MoonpayFiatOnRampEthereumConfig] Configuration for a Moonpay fiat on-ramp for an Ethereum-compatible chain.
    end
  end
end
