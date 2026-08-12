# frozen_string_literal: true

module Privy
  module Models
    class GetStripeOnrampTransactionLimitsQueryParams < Privy::Internal::Type::BaseModel
      # @!attribute destination_chain
      #   A valid CAIP-2 chain ID (e.g. 'eip155:4217' for Tempo, 'eip155:1' for Ethereum).
      #
      #   @return [String]
      required :destination_chain, String

      # @!attribute environment
      #   Whether to use the sandbox or production environment for fiat onramp.
      #
      #   @return [Symbol, Privy::Models::FiatOnrampEnvironment]
      required :environment, enum: -> { Privy::FiatOnrampEnvironment }

      # @!attribute wallet_address
      #   The destination wallet address.
      #
      #   @return [String]
      required :wallet_address, String

      # @!method initialize(destination_chain:, environment:, wallet_address:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::GetStripeOnrampTransactionLimitsQueryParams} for more details.
      #
      #   Query parameters for retrieving Stripe onramp transaction limits.
      #
      #   @param destination_chain [String] A valid CAIP-2 chain ID (e.g. 'eip155:4217' for Tempo, 'eip155:1' for Ethereum).
      #
      #   @param environment [Symbol, Privy::Models::FiatOnrampEnvironment] Whether to use the sandbox or production environment for fiat onramp.
      #
      #   @param wallet_address [String] The destination wallet address.
    end
  end
end
