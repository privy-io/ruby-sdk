# typed: strong

module Privy
  module Models
    class CryptoDepositAccountSearchCurrency < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::CryptoDepositAccountSearchCurrency,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Privy::CryptoDepositAccountSourceChain]) }
      attr_accessor :chains

      sig { returns(String) }
      attr_accessor :name

      sig { returns(String) }
      attr_accessor :symbol

      # Whether this token is verified as the canonical token for its symbol, since
      # unverified tokens may be lookalikes.
      sig { returns(T::Boolean) }
      attr_accessor :verified

      # URL of the token logo, omitted when none is known.
      sig { returns(T.nilable(String)) }
      attr_reader :logo_uri

      sig { params(logo_uri: String).void }
      attr_writer :logo_uri

      # A source token matched by crypto deposit-account search.
      sig do
        params(
          chains: T::Array[Privy::CryptoDepositAccountSourceChain::OrHash],
          name: String,
          symbol: String,
          verified: T::Boolean,
          logo_uri: String
        ).returns(T.attached_class)
      end
      def self.new(
        chains:,
        name:,
        symbol:,
        # Whether this token is verified as the canonical token for its symbol, since
        # unverified tokens may be lookalikes.
        verified:,
        # URL of the token logo, omitted when none is known.
        logo_uri: nil
      )
      end

      sig do
        override.returns(
          {
            chains: T::Array[Privy::CryptoDepositAccountSourceChain],
            name: String,
            symbol: String,
            verified: T::Boolean,
            logo_uri: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
