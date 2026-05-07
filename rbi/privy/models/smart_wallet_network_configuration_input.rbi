# typed: strong

module Privy
  module Models
    class SmartWalletNetworkConfigurationInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::SmartWalletNetworkConfigurationInput,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :chain_id

      sig { returns(T.nilable(String)) }
      attr_reader :bundler_url

      sig { params(bundler_url: String).void }
      attr_writer :bundler_url

      sig { returns(T.nilable(String)) }
      attr_reader :chain_name

      sig { params(chain_name: String).void }
      attr_writer :chain_name

      # The Alchemy paymaster context for a smart wallet network configuration.
      sig { returns(T.nilable(Privy::AlchemyPaymasterContext)) }
      attr_reader :paymaster_context

      sig do
        params(paymaster_context: Privy::AlchemyPaymasterContext::OrHash).void
      end
      attr_writer :paymaster_context

      sig { returns(T.nilable(String)) }
      attr_reader :paymaster_url

      sig { params(paymaster_url: String).void }
      attr_writer :paymaster_url

      sig { returns(T.nilable(String)) }
      attr_reader :rpc_url

      sig { params(rpc_url: String).void }
      attr_writer :rpc_url

      # Input for network configuration for a smart wallet.
      sig do
        params(
          chain_id: String,
          bundler_url: String,
          chain_name: String,
          paymaster_context: Privy::AlchemyPaymasterContext::OrHash,
          paymaster_url: String,
          rpc_url: String
        ).returns(T.attached_class)
      end
      def self.new(
        chain_id:,
        bundler_url: nil,
        chain_name: nil,
        # The Alchemy paymaster context for a smart wallet network configuration.
        paymaster_context: nil,
        paymaster_url: nil,
        rpc_url: nil
      )
      end

      sig do
        override.returns(
          {
            chain_id: String,
            bundler_url: String,
            chain_name: String,
            paymaster_context: Privy::AlchemyPaymasterContext,
            paymaster_url: String,
            rpc_url: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
