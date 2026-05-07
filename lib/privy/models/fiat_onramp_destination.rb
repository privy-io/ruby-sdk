# frozen_string_literal: true

module Privy
  module Models
    class FiatOnrampDestination < Privy::Internal::Type::BaseModel
      # @!attribute address
      #
      #   @return [String]
      required :address, String

      # @!attribute asset
      #   Cryptocurrency symbol. Uppercase alphanumeric, 2-10 characters.
      #
      #   @return [String]
      required :asset, String

      # @!attribute chain
      #   A CAIP-2 chain identifier in namespace:reference format (e.g. "eip155:1" for
      #   Ethereum mainnet, "solana:5eykt4UsFv8P8NJdTREpY1vzqKqZKvdp" for Solana mainnet).
      #
      #   @return [String]
      required :chain, String

      # @!method initialize(address:, asset:, chain:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::FiatOnrampDestination} for more details.
      #
      #   Destination cryptocurrency details for a fiat onramp quote request.
      #
      #   @param address [String]
      #
      #   @param asset [String] Cryptocurrency symbol. Uppercase alphanumeric, 2-10 characters.
      #
      #   @param chain [String] A CAIP-2 chain identifier in namespace:reference format (e.g. "eip155:1" for Eth
    end
  end
end
