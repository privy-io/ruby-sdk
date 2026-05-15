# frozen_string_literal: true

module Privy
  module Models
    # The input for signing a Moonpay on-ramp.
    module MoonpayOnRampSignInput
      extend Privy::Internal::Type::Union

      # Sandbox configuration for a Moonpay on-ramp.
      variant -> { Privy::MoonpayOnRampSignInput::MoonpayFiatOnRampEthereumInput }

      # Sandbox configuration for a Moonpay on-ramp.
      variant -> { Privy::MoonpayOnRampSignInput::MoonpayFiatOnRampSolanaInput }

      class MoonpayFiatOnRampEthereumInput < Privy::Internal::Type::BaseModel
        # @!attribute use_sandbox
        #
        #   @return [Boolean, nil]
        optional :use_sandbox, Privy::Internal::Type::Boolean, api_name: :useSandbox

        # @!attribute address
        #
        #   @return [String]
        required :address, String

        # @!attribute config
        #   Configuration for a Moonpay fiat on-ramp for an Ethereum-compatible chain.
        #
        #   @return [Privy::Models::MoonpayFiatOnRampEthereumConfig]
        required :config, -> { Privy::MoonpayFiatOnRampEthereumConfig }

        # @!method initialize(address:, config:, use_sandbox: nil)
        #   Sandbox configuration for a Moonpay on-ramp.
        #
        #   @param address [String]
        #
        #   @param config [Privy::Models::MoonpayFiatOnRampEthereumConfig] Configuration for a Moonpay fiat on-ramp for an Ethereum-compatible chain.
        #
        #   @param use_sandbox [Boolean]
      end

      class MoonpayFiatOnRampSolanaInput < Privy::Internal::Type::BaseModel
        # @!attribute use_sandbox
        #
        #   @return [Boolean, nil]
        optional :use_sandbox, Privy::Internal::Type::Boolean, api_name: :useSandbox

        # @!attribute address
        #
        #   @return [String]
        required :address, String

        # @!attribute config
        #   Configuration for a Moonpay fiat on-ramp for Solana.
        #
        #   @return [Privy::Models::MoonpayFiatOnRampSolanaConfig]
        required :config, -> { Privy::MoonpayFiatOnRampSolanaConfig }

        # @!method initialize(address:, config:, use_sandbox: nil)
        #   Sandbox configuration for a Moonpay on-ramp.
        #
        #   @param address [String]
        #
        #   @param config [Privy::Models::MoonpayFiatOnRampSolanaConfig] Configuration for a Moonpay fiat on-ramp for Solana.
        #
        #   @param use_sandbox [Boolean]
      end

      # @!method self.variants
      #   @return [Array(Privy::Models::MoonpayOnRampSignInput::MoonpayFiatOnRampEthereumInput, Privy::Models::MoonpayOnRampSignInput::MoonpayFiatOnRampSolanaInput)]
    end
  end
end
