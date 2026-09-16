# typed: strong

module Privy
  module Models
    class CryptoDepositAccountConfigResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::CryptoDepositAccountConfigResponse,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(T::Hash[Symbol, Privy::CryptoDepositAccountChain]) }
      attr_accessor :chains

      sig { returns(T::Array[Privy::CryptoDepositAccountSourceCurrency]) }
      attr_accessor :currencies

      # Source-token catalog for crypto deposit accounts. Only automation-sweepable,
      # gas-sponsored mainnets.
      sig do
        params(
          chains: T::Hash[Symbol, Privy::CryptoDepositAccountChain::OrHash],
          currencies:
            T::Array[Privy::CryptoDepositAccountSourceCurrency::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(chains:, currencies:)
      end

      sig do
        override.returns(
          {
            chains: T::Hash[Symbol, Privy::CryptoDepositAccountChain],
            currencies: T::Array[Privy::CryptoDepositAccountSourceCurrency]
          }
        )
      end
      def to_hash
      end
    end
  end
end
