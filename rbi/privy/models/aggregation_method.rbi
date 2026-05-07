# typed: strong

module Privy
  module Models
    # The RPC method this aggregation applies to.
    module AggregationMethod
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::AggregationMethod) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ETH_SIGN_TRANSACTION =
        T.let(:eth_signTransaction, Privy::AggregationMethod::TaggedSymbol)
      ETH_SIGN_USER_OPERATION =
        T.let(:eth_signUserOperation, Privy::AggregationMethod::TaggedSymbol)

      sig { override.returns(T::Array[Privy::AggregationMethod::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
