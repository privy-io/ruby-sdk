# typed: strong

module Privy
  module Models
    # The Spark network.
    module SparkNetwork
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::SparkNetwork) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      MAINNET = T.let(:MAINNET, Privy::SparkNetwork::TaggedSymbol)
      REGTEST = T.let(:REGTEST, Privy::SparkNetwork::TaggedSymbol)

      sig { override.returns(T::Array[Privy::SparkNetwork::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
