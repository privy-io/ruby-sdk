# typed: strong

module Privy
  module Models
    class CoinbaseOnRampEthereumAddress < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::CoinbaseOnRampEthereumAddress, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :address

      sig { returns(T::Array[Privy::CoinbaseBlockchain::OrSymbol]) }
      attr_accessor :blockchains

      # An Ethereum address with supported blockchains for Coinbase on-ramp.
      sig do
        params(
          address: String,
          blockchains: T::Array[Privy::CoinbaseBlockchain::OrSymbol]
        ).returns(T.attached_class)
      end
      def self.new(address:, blockchains:)
      end

      sig do
        override.returns(
          {
            address: String,
            blockchains: T::Array[Privy::CoinbaseBlockchain::OrSymbol]
          }
        )
      end
      def to_hash
      end
    end
  end
end
