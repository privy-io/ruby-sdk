# typed: strong

module Privy
  module Models
    # A condition that must be true for the rule action to be applied.
    module PolicyCondition
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::EthereumTransactionCondition,
            Privy::EthereumCalldataCondition,
            Privy::EthereumTypedDataDomainCondition,
            Privy::EthereumTypedDataMessageCondition,
            Privy::Ethereum7702AuthorizationCondition,
            Privy::TempoTransactionCondition,
            Privy::SolanaProgramInstructionCondition,
            Privy::SolanaSystemProgramInstructionCondition,
            Privy::SolanaTokenProgramInstructionCondition,
            Privy::SystemCondition,
            Privy::TronTransactionCondition,
            Privy::TronCalldataCondition,
            Privy::SuiTransactionCommandCondition,
            Privy::SuiTransferObjectsCommandCondition,
            Privy::ActionRequestBodyCondition,
            Privy::AggregationCondition,
            Privy::MessageSigningCondition
          )
        end

      sig { override.returns(T::Array[Privy::PolicyCondition::Variants]) }
      def self.variants
      end
    end
  end
end
