# typed: strong

module Privy
  module Models
    class MoonpayFiatOnRampEthereumInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::MoonpayFiatOnRampEthereumInput, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :address

      # Configuration for a Moonpay fiat on-ramp for an Ethereum-compatible chain.
      sig { returns(Privy::MoonpayFiatOnRampEthereumConfig) }
      attr_reader :config

      sig do
        params(config: Privy::MoonpayFiatOnRampEthereumConfig::OrHash).void
      end
      attr_writer :config

      # Input for a Moonpay fiat on-ramp for an Ethereum-compatible chain.
      sig do
        params(
          address: String,
          config: Privy::MoonpayFiatOnRampEthereumConfig::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        address:,
        # Configuration for a Moonpay fiat on-ramp for an Ethereum-compatible chain.
        config:
      )
      end

      sig do
        override.returns(
          { address: String, config: Privy::MoonpayFiatOnRampEthereumConfig }
        )
      end
      def to_hash
      end
    end
  end
end
