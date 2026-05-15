# typed: strong

module Privy
  module Models
    class MoonpayFiatOnRampSolanaInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::MoonpayFiatOnRampSolanaInput, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :address

      # Configuration for a Moonpay fiat on-ramp for Solana.
      sig { returns(Privy::MoonpayFiatOnRampSolanaConfig) }
      attr_reader :config

      sig { params(config: Privy::MoonpayFiatOnRampSolanaConfig::OrHash).void }
      attr_writer :config

      # Input for a Moonpay fiat on-ramp for Solana.
      sig do
        params(
          address: String,
          config: Privy::MoonpayFiatOnRampSolanaConfig::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        address:,
        # Configuration for a Moonpay fiat on-ramp for Solana.
        config:
      )
      end

      sig do
        override.returns(
          { address: String, config: Privy::MoonpayFiatOnRampSolanaConfig }
        )
      end
      def to_hash
      end
    end
  end
end
