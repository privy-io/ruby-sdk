# typed: strong

module Privy
  module Models
    class CryptoDepositAccountSourceCurrency < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::CryptoDepositAccountSourceCurrency,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Privy::CryptoDepositAccountSourceChain]) }
      attr_accessor :chains

      # URL of the token logo.
      sig { returns(String) }
      attr_accessor :logo_uri

      sig { returns(String) }
      attr_accessor :name

      sig { returns(String) }
      attr_accessor :symbol

      # A source token in the crypto deposit-account catalog, with the chains it can be
      # sent from.
      sig do
        params(
          chains: T::Array[Privy::CryptoDepositAccountSourceChain::OrHash],
          logo_uri: String,
          name: String,
          symbol: String
        ).returns(T.attached_class)
      end
      def self.new(
        chains:,
        # URL of the token logo.
        logo_uri:,
        name:,
        symbol:
      )
      end

      sig do
        override.returns(
          {
            chains: T::Array[Privy::CryptoDepositAccountSourceChain],
            logo_uri: String,
            name: String,
            symbol: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
