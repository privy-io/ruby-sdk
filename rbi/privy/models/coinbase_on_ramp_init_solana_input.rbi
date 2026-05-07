# typed: strong

module Privy
  module Models
    class CoinbaseOnRampInitSolanaInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::CoinbaseOnRampInitSolanaInput, Privy::Internal::AnyHash)
        end

      sig { returns(T::Array[Privy::CoinbaseOnRampSolanaAddress]) }
      attr_accessor :addresses

      sig { returns(T.nilable(T::Array[Privy::CoinbaseSolanaAsset::OrSymbol])) }
      attr_reader :assets

      sig do
        params(assets: T::Array[Privy::CoinbaseSolanaAsset::OrSymbol]).void
      end
      attr_writer :assets

      # Input for initializing a Coinbase on-ramp session for Solana.
      sig do
        params(
          addresses: T::Array[Privy::CoinbaseOnRampSolanaAddress::OrHash],
          assets: T::Array[Privy::CoinbaseSolanaAsset::OrSymbol]
        ).returns(T.attached_class)
      end
      def self.new(addresses:, assets: nil)
      end

      sig do
        override.returns(
          {
            addresses: T::Array[Privy::CoinbaseOnRampSolanaAddress],
            assets: T::Array[Privy::CoinbaseSolanaAsset::OrSymbol]
          }
        )
      end
      def to_hash
      end
    end
  end
end
