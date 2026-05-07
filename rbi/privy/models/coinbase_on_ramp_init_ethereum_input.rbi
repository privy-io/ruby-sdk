# typed: strong

module Privy
  module Models
    class CoinbaseOnRampInitEthereumInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::CoinbaseOnRampInitEthereumInput,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Privy::CoinbaseOnRampEthereumAddress]) }
      attr_accessor :addresses

      sig do
        returns(T.nilable(T::Array[Privy::CoinbaseEthereumAsset::OrSymbol]))
      end
      attr_reader :assets

      sig do
        params(assets: T::Array[Privy::CoinbaseEthereumAsset::OrSymbol]).void
      end
      attr_writer :assets

      # Input for initializing a Coinbase on-ramp session for Ethereum.
      sig do
        params(
          addresses: T::Array[Privy::CoinbaseOnRampEthereumAddress::OrHash],
          assets: T::Array[Privy::CoinbaseEthereumAsset::OrSymbol]
        ).returns(T.attached_class)
      end
      def self.new(addresses:, assets: nil)
      end

      sig do
        override.returns(
          {
            addresses: T::Array[Privy::CoinbaseOnRampEthereumAddress],
            assets: T::Array[Privy::CoinbaseEthereumAsset::OrSymbol]
          }
        )
      end
      def to_hash
      end
    end
  end
end
