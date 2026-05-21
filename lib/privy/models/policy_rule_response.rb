# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Policies#create_rule
    class PolicyRuleResponse < Privy::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute action
      #   The action to take when a policy rule matches.
      #
      #   @return [Symbol, Privy::Models::PolicyAction]
      required :action, enum: -> { Privy::PolicyAction }

      # @!attribute conditions
      #
      #   @return [Array<Privy::Models::EthereumTransactionCondition, Privy::Models::EthereumCalldataCondition, Privy::Models::EthereumTypedDataDomainCondition, Privy::Models::EthereumTypedDataMessageCondition, Privy::Models::Ethereum7702AuthorizationCondition, Privy::Models::TempoTransactionCondition, Privy::Models::SolanaProgramInstructionCondition, Privy::Models::SolanaSystemProgramInstructionCondition, Privy::Models::SolanaTokenProgramInstructionCondition, Privy::Models::SystemCondition, Privy::Models::TronTransactionCondition, Privy::Models::TronCalldataCondition, Privy::Models::SuiTransactionCommandCondition, Privy::Models::SuiTransferObjectsCommandCondition, Privy::Models::ActionRequestBodyCondition, Privy::Models::AggregationCondition>]
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

      # @!method initialize(id:, action:, conditions:, method_:, name:)
      #   A rule that defines the conditions and action to take if the conditions are
      #   true.
      #
      #   @param id [String]
      #
      #   @param action [Symbol, Privy::Models::PolicyAction] The action to take when a policy rule matches.
      #
      #   @param conditions [Array<Privy::Models::EthereumTransactionCondition, Privy::Models::EthereumCalldataCondition, Privy::Models::EthereumTypedDataDomainCondition, Privy::Models::EthereumTypedDataMessageCondition, Privy::Models::Ethereum7702AuthorizationCondition, Privy::Models::TempoTransactionCondition, Privy::Models::SolanaProgramInstructionCondition, Privy::Models::SolanaSystemProgramInstructionCondition, Privy::Models::SolanaTokenProgramInstructionCondition, Privy::Models::SystemCondition, Privy::Models::TronTransactionCondition, Privy::Models::TronCalldataCondition, Privy::Models::SuiTransactionCommandCondition, Privy::Models::SuiTransferObjectsCommandCondition, Privy::Models::ActionRequestBodyCondition, Privy::Models::AggregationCondition>]
      #
      #   @param method_ [Symbol, Privy::Models::PolicyMethod] Method the rule applies to.
      #
      #   @param name [String]
    end
  end
end
