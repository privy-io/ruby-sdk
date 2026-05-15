# typed: strong

module Privy
  module Models
    # The input for signing a Moonpay on-ramp.
    module MoonpayOnRampSignInput
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::MoonpayOnRampSignInput::MoonpayFiatOnRampEthereumInput,
            Privy::MoonpayOnRampSignInput::MoonpayFiatOnRampSolanaInput
          )
        end

      class MoonpayFiatOnRampEthereumInput < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::MoonpayOnRampSignInput::MoonpayFiatOnRampEthereumInput,
              Privy::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :use_sandbox

        sig { params(use_sandbox: T::Boolean).void }
        attr_writer :use_sandbox

        sig { returns(String) }
        attr_accessor :address

        # Configuration for a Moonpay fiat on-ramp for an Ethereum-compatible chain.
        sig { returns(Privy::MoonpayFiatOnRampEthereumConfig) }
        attr_reader :config

        sig do
          params(config: Privy::MoonpayFiatOnRampEthereumConfig::OrHash).void
        end
        attr_writer :config

        # Sandbox configuration for a Moonpay on-ramp.
        sig do
          params(
            address: String,
            config: Privy::MoonpayFiatOnRampEthereumConfig::OrHash,
            use_sandbox: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          address:,
          # Configuration for a Moonpay fiat on-ramp for an Ethereum-compatible chain.
          config:,
          use_sandbox: nil
        )
        end

        sig do
          override.returns(
            {
              use_sandbox: T::Boolean,
              address: String,
              config: Privy::MoonpayFiatOnRampEthereumConfig
            }
          )
        end
        def to_hash
        end
      end

      class MoonpayFiatOnRampSolanaInput < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::MoonpayOnRampSignInput::MoonpayFiatOnRampSolanaInput,
              Privy::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :use_sandbox

        sig { params(use_sandbox: T::Boolean).void }
        attr_writer :use_sandbox

        sig { returns(String) }
        attr_accessor :address

        # Configuration for a Moonpay fiat on-ramp for Solana.
        sig { returns(Privy::MoonpayFiatOnRampSolanaConfig) }
        attr_reader :config

        sig do
          params(config: Privy::MoonpayFiatOnRampSolanaConfig::OrHash).void
        end
        attr_writer :config

        # Sandbox configuration for a Moonpay on-ramp.
        sig do
          params(
            address: String,
            config: Privy::MoonpayFiatOnRampSolanaConfig::OrHash,
            use_sandbox: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          address:,
          # Configuration for a Moonpay fiat on-ramp for Solana.
          config:,
          use_sandbox: nil
        )
        end

        sig do
          override.returns(
            {
              use_sandbox: T::Boolean,
              address: String,
              config: Privy::MoonpayFiatOnRampSolanaConfig
            }
          )
        end
        def to_hash
        end
      end

      sig do
        override.returns(T::Array[Privy::MoonpayOnRampSignInput::Variants])
      end
      def self.variants
      end
    end
  end
end
