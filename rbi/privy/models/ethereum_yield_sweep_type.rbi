# typed: strong

module Privy
  module Models
    # Type of yield sweep.
    module EthereumYieldSweepType
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::EthereumYieldSweepType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      DEPOSIT = T.let(:deposit, Privy::EthereumYieldSweepType::TaggedSymbol)
      WITHDRAW = T.let(:withdraw, Privy::EthereumYieldSweepType::TaggedSymbol)

      sig do
        override.returns(T::Array[Privy::EthereumYieldSweepType::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
