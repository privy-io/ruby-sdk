# frozen_string_literal: true

module Privy
  module Models
    class PolicyRuleRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute action
      #   The action to take when a policy rule matches.
      #
      #   @return [Symbol, Privy::Models::PolicyAction]
      required :action, enum: -> { Privy::PolicyAction }

      # @!attribute conditions
      #
      #   @return [Array<Privy::Models::EthereumTransactionCondition, Privy::Models::EthereumCalldataCondition, Privy::Models::EthereumTypedDataDomainCondition, Privy::Models::EthereumTypedDataMessageCondition, Privy::Models::Ethereum7702AuthorizationCondition, Privy::Models::SolanaProgramInstructionCondition, Privy::Models::SolanaSystemProgramInstructionCondition, Privy::Models::SolanaTokenProgramInstructionCondition, Privy::Models::SystemCondition, Privy::Models::TronTransactionCondition, Privy::Models::TronCalldataCondition, Privy::Models::SuiTransactionCommandCondition, Privy::Models::SuiTransferObjectsCommandCondition, Privy::Models::ActionRequestBodyCondition, Privy::Models::AggregationCondition>]
      required :conditions, -> { Privy::Internal::Type::ArrayOf[union: Privy::PolicyCondition] }

      # @!attribute method_
      #   Method the rule applies to.
      #
      #   @return [Symbol, Privy::Models::PolicyMethod]
      required :method_, enum: -> { Privy::PolicyMethod }, api_name: :method

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!method initialize(action:, conditions:, method_:, name:)
      #   The rules that apply to each method the policy covers.
      #
      #   @param action [Symbol, Privy::Models::PolicyAction] The action to take when a policy rule matches.
      #
      #   @param conditions [Array<Privy::Models::EthereumTransactionCondition, Privy::Models::EthereumCalldataCondition, Privy::Models::EthereumTypedDataDomainCondition, Privy::Models::EthereumTypedDataMessageCondition, Privy::Models::Ethereum7702AuthorizationCondition, Privy::Models::SolanaProgramInstructionCondition, Privy::Models::SolanaSystemProgramInstructionCondition, Privy::Models::SolanaTokenProgramInstructionCondition, Privy::Models::SystemCondition, Privy::Models::TronTransactionCondition, Privy::Models::TronCalldataCondition, Privy::Models::SuiTransactionCommandCondition, Privy::Models::SuiTransferObjectsCommandCondition, Privy::Models::ActionRequestBodyCondition, Privy::Models::AggregationCondition>]
      #
      #   @param method_ [Symbol, Privy::Models::PolicyMethod] Method the rule applies to.
      #
      #   @param name [String]
    end
  end
end
