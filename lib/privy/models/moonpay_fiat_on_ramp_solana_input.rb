# frozen_string_literal: true

module Privy
  module Models
    class MoonpayFiatOnRampSolanaInput < Privy::Internal::Type::BaseModel
      # @!attribute address
      #
      #   @return [String]
      required :address, String

      # @!attribute config
      #   Configuration for a Moonpay fiat on-ramp for Solana.
      #
      #   @return [Privy::Models::MoonpayFiatOnRampSolanaConfig]
      required :config, -> { Privy::MoonpayFiatOnRampSolanaConfig }

      # @!method initialize(address:, config:)
      #   Input for a Moonpay fiat on-ramp for Solana.
      #
      #   @param address [String]
      #
      #   @param config [Privy::Models::MoonpayFiatOnRampSolanaConfig] Configuration for a Moonpay fiat on-ramp for Solana.
    end
  end
end
