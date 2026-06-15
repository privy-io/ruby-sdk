# typed: strong

module Privy
  module Models
    class PolicyRuleResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::PolicyRuleResponse, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # The action to take when a policy rule matches.
      sig { returns(Privy::PolicyAction::TaggedSymbol) }
      attr_accessor :action

      sig { returns(T::Array[Privy::PolicyCondition::Variants]) }
      attr_accessor :conditions

      # Method the rule applies to.
      sig { returns(Privy::PolicyMethod::TaggedSymbol) }
      attr_accessor :method_

      sig { returns(String) }
      attr_accessor :name

      # A rule that defines the conditions and action to take if the conditions are
      # true.
      sig do
        params(
          id: String,
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
                Privy::AggregationCondition::OrHash,
                Privy::MessageSigningCondition::OrHash
              )
            ],
          method_: Privy::PolicyMethod::OrSymbol,
          name: String
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
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
            id: String,
            action: Privy::PolicyAction::TaggedSymbol,
            conditions: T::Array[Privy::PolicyCondition::Variants],
            method_: Privy::PolicyMethod::TaggedSymbol,
            name: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
