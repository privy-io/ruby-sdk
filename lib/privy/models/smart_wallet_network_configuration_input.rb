# frozen_string_literal: true

module Privy
  module Models
    class SmartWalletNetworkConfigurationInput < Privy::Internal::Type::BaseModel
      # @!attribute chain_id
      #
      #   @return [String]
      required :chain_id, String

      # @!attribute bundler_url
      #
      #   @return [String, nil]
      optional :bundler_url, String

      # @!attribute chain_name
      #
      #   @return [String, nil]
      optional :chain_name, String

      # @!attribute paymaster_context
      #   The Alchemy paymaster context for a smart wallet network configuration.
      #
      #   @return [Privy::Models::AlchemyPaymasterContext, nil]
      optional :paymaster_context, -> { Privy::AlchemyPaymasterContext }

      # @!attribute paymaster_url
      #
      #   @return [String, nil]
      optional :paymaster_url, String

      # @!attribute rpc_url
      #
      #   @return [String, nil]
      optional :rpc_url, String

      # @!method initialize(chain_id:, bundler_url: nil, chain_name: nil, paymaster_context: nil, paymaster_url: nil, rpc_url: nil)
      #   Input for network configuration for a smart wallet.
      #
      #   @param chain_id [String]
      #
      #   @param bundler_url [String]
      #
      #   @param chain_name [String]
      #
      #   @param paymaster_context [Privy::Models::AlchemyPaymasterContext] The Alchemy paymaster context for a smart wallet network configuration.
      #
      #   @param paymaster_url [String]
      #
      #   @param rpc_url [String]
    end
  end
end
