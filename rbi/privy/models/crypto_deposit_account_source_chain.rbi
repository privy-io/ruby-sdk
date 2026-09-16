# typed: strong

module Privy
  module Models
    class CryptoDepositAccountSourceChain < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::CryptoDepositAccountSourceChain,
            Privy::Internal::AnyHash
          )
        end

      # Token contract or native asset address on this chain.
      sig { returns(String) }
      attr_accessor :address

      # EVM CAIP-2 chain identifier (e.g. "eip155:4217" for Tempo, "eip155:1" for
      # Ethereum).
      sig { returns(String) }
      attr_accessor :caip2

      # Token decimals on this chain.
      sig { returns(Integer) }
      attr_accessor :decimals

      # A token contract on one source chain in the crypto deposit-account catalog.
      sig do
        params(address: String, caip2: String, decimals: Integer).returns(
          T.attached_class
        )
      end
      def self.new(
        # Token contract or native asset address on this chain.
        address:,
        # EVM CAIP-2 chain identifier (e.g. "eip155:4217" for Tempo, "eip155:1" for
        # Ethereum).
        caip2:,
        # Token decimals on this chain.
        decimals:
      )
      end

      sig do
        override.returns({ address: String, caip2: String, decimals: Integer })
      end
      def to_hash
      end
    end
  end
end
