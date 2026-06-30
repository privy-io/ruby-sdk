# typed: strong

module Privy
  module Models
    # Supported fields for Ethereum typed data domain conditions.
    module EthereumTypedDataDomainConditionField
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias do
          T.all(Symbol, Privy::EthereumTypedDataDomainConditionField)
        end
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      CHAIN_ID =
        T.let(
          :chainId,
          Privy::EthereumTypedDataDomainConditionField::TaggedSymbol
        )
      CHAIN_ID_2 =
        T.let(
          :chain_id,
          Privy::EthereumTypedDataDomainConditionField::TaggedSymbol
        )
      VERIFYING_CONTRACT =
        T.let(
          :verifyingContract,
          Privy::EthereumTypedDataDomainConditionField::TaggedSymbol
        )
      VERIFYING_CONTRACT_2 =
        T.let(
          :verifying_contract,
          Privy::EthereumTypedDataDomainConditionField::TaggedSymbol
        )

      sig do
        override.returns(
          T::Array[Privy::EthereumTypedDataDomainConditionField::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
