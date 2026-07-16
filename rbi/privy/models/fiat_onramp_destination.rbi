# typed: strong

module Privy
  module Models
    class FiatOnrampDestination < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::FiatOnrampDestination, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :address

      # Token identifier string. EVM-shaped 40-hex token addresses normalize to checksum
      # case, 16-byte Hyperliquid token IDs normalize to lowercase, and all other
      # identifiers pass through unchanged.
      sig { returns(String) }
      attr_accessor :asset

      # A CAIP-2 chain identifier in namespace:reference format (e.g. "eip155:4217" for
      # Tempo or "solana:5eykt4UsFv8P8NJdTREpY1vzqKqZKvdp" for Solana mainnet).
      sig { returns(String) }
      attr_accessor :chain

      # Destination cryptocurrency details for a fiat onramp quote request.
      sig do
        params(address: String, asset: String, chain: String).returns(
          T.attached_class
        )
      end
      def self.new(
        address:,
        # Token identifier string. EVM-shaped 40-hex token addresses normalize to checksum
        # case, 16-byte Hyperliquid token IDs normalize to lowercase, and all other
        # identifiers pass through unchanged.
        asset:,
        # A CAIP-2 chain identifier in namespace:reference format (e.g. "eip155:4217" for
        # Tempo or "solana:5eykt4UsFv8P8NJdTREpY1vzqKqZKvdp" for Solana mainnet).
        chain:
      )
      end

      sig do
        override.returns({ address: String, asset: String, chain: String })
      end
      def to_hash
      end
    end
  end
end
