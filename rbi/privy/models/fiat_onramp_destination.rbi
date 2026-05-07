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

      # Cryptocurrency symbol. Uppercase alphanumeric, 2-10 characters.
      sig { returns(String) }
      attr_accessor :asset

      # A CAIP-2 chain identifier in namespace:reference format (e.g. "eip155:1" for
      # Ethereum mainnet, "solana:5eykt4UsFv8P8NJdTREpY1vzqKqZKvdp" for Solana mainnet).
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
        # Cryptocurrency symbol. Uppercase alphanumeric, 2-10 characters.
        asset:,
        # A CAIP-2 chain identifier in namespace:reference format (e.g. "eip155:1" for
        # Ethereum mainnet, "solana:5eykt4UsFv8P8NJdTREpY1vzqKqZKvdp" for Solana mainnet).
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
