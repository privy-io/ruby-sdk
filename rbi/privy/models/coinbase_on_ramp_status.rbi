# typed: strong

module Privy
  module Models
    # Status of a Coinbase on-ramp session.
    module CoinbaseOnRampStatus
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::CoinbaseOnRampStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PENDING = T.let(:pending, Privy::CoinbaseOnRampStatus::TaggedSymbol)
      SUCCESS = T.let(:success, Privy::CoinbaseOnRampStatus::TaggedSymbol)
      FAILURE = T.let(:failure, Privy::CoinbaseOnRampStatus::TaggedSymbol)

      sig do
        override.returns(T::Array[Privy::CoinbaseOnRampStatus::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
