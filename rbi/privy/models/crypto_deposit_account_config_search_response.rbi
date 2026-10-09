# typed: strong

module Privy
  module Models
    class CryptoDepositAccountConfigSearchResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::CryptoDepositAccountConfigSearchResponse,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(T::Hash[Symbol, Privy::CryptoDepositAccountChain]) }
      attr_accessor :chains

      sig { returns(T::Array[Privy::CryptoDepositAccountSearchCurrency]) }
      attr_accessor :currencies

      # Source tokens matching a crypto deposit-account search.
      sig do
        params(
          chains: T::Hash[Symbol, Privy::CryptoDepositAccountChain::OrHash],
          currencies:
            T::Array[Privy::CryptoDepositAccountSearchCurrency::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(chains:, currencies:)
      end

      sig do
        override.returns(
          {
            chains: T::Hash[Symbol, Privy::CryptoDepositAccountChain],
            currencies: T::Array[Privy::CryptoDepositAccountSearchCurrency]
          }
        )
      end
      def to_hash
      end
    end
  end
end
