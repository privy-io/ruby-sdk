# typed: strong

module Privy
  module Models
    # Status of a yield sweep.
    module EthereumYieldSweepStatus
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::EthereumYieldSweepStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PENDING = T.let(:pending, Privy::EthereumYieldSweepStatus::TaggedSymbol)
      CONFIRMED =
        T.let(:confirmed, Privy::EthereumYieldSweepStatus::TaggedSymbol)
      FAILED = T.let(:failed, Privy::EthereumYieldSweepStatus::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Privy::EthereumYieldSweepStatus::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
