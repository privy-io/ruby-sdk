# typed: strong

module Privy
  module Models
    # Ethereum transaction-level fields that can be referenced in a policy condition.
    module EthereumTransactionConditionField
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::EthereumTransactionConditionField) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      TO = T.let(:to, Privy::EthereumTransactionConditionField::TaggedSymbol)
      VALUE =
        T.let(:value, Privy::EthereumTransactionConditionField::TaggedSymbol)
      CHAIN_ID =
        T.let(:chain_id, Privy::EthereumTransactionConditionField::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Privy::EthereumTransactionConditionField::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
