# typed: strong

module Privy
  module Models
    class PolicyRuleRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::PolicyRuleRequestBody, Privy::Internal::AnyHash)
        end

      # The action to take when a policy rule matches.
      sig { returns(Privy::PolicyAction::OrSymbol) }
      attr_accessor :action

      sig do
        returns(
          T::Array[
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
              Privy::AggregationCondition
            )
          ]
        )
      end
      attr_accessor :conditions

      # Method the rule applies to.
      sig { returns(Privy::PolicyMethod::OrSymbol) }
      attr_accessor :method_

      sig { returns(String) }
      attr_accessor :name

      # The rules that apply to each method the policy covers.
      sig do
        params(
          action: Privy::PolicyAction::OrSymbol,
          conditions:
            T::Array[
              T.any(
                Privy::EthereumTransactionCondition::OrHash,
                Privy::EthereumCalldataCondition::OrHash,
                Privy::EthereumTypedDataDomainCondition::OrHash,
                Privy::EthereumTypedDataMessageCondition::OrHash,
                Privy::Ethereum7702AuthorizationCondition::OrHash,
                Privy::TempoTransactionCondition::OrHash,
                Privy::SolanaProgramInstructionCondition::OrHash,
                Privy::SolanaSystemProgramInstructionCondition::OrHash,
                Privy::SolanaTokenProgramInstructionCondition::OrHash,
                Privy::SystemCondition::OrHash,
                Privy::TronTransactionCondition::OrHash,
                Privy::TronCalldataCondition::OrHash,
                Privy::SuiTransactionCommandCondition::OrHash,
                Privy::SuiTransferObjectsCommandCondition::OrHash,
                Privy::ActionRequestBodyCondition::OrHash,
                Privy::AggregationCondition::OrHash
              )
            ],
          method_: Privy::PolicyMethod::OrSymbol,
          name: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The action to take when a policy rule matches.
        action:,
        conditions:,
        # Method the rule applies to.
        method_:,
        name:
      )
      end

      sig do
        override.returns(
          {
            action: Privy::PolicyAction::OrSymbol,
            conditions:
              T::Array[
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
                  Privy::AggregationCondition
                )
              ],
            method_: Privy::PolicyMethod::OrSymbol,
            name: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
