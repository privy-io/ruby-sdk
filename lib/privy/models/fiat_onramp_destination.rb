# frozen_string_literal: true

module Privy
  module Models
    class FiatOnrampDestination < Privy::Internal::Type::BaseModel
      # @!attribute address
      #
      #   @return [String]
      required :address, String

      # @!attribute asset
      #   Token identifier string. EVM-shaped 40-hex token addresses normalize to checksum
      #   case, 16-byte Hyperliquid token IDs normalize to lowercase, and all other
      #   identifiers pass through unchanged.
      #
      #   @return [String]
      required :asset, String

      # @!attribute chain
      #   A CAIP-2 chain identifier in namespace:reference format (e.g. "eip155:4217" for
      #   Tempo or "solana:5eykt4UsFv8P8NJdTREpY1vzqKqZKvdp" for Solana mainnet).
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
      #   @param asset [String] Token identifier string. EVM-shaped 40-hex token addresses normalize to checksum
      #
      #   @param chain [String] A CAIP-2 chain identifier in namespace:reference format (e.g. "eip155:4217" for
    end
  end
end
