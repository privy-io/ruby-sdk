# frozen_string_literal: true

module Privy
  module Models
    class AggregationInput < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #   The RPC method this aggregation applies to.
      #
      #   @return [Symbol, Privy::Models::AggregationMethod]
      required :method_, enum: -> { Privy::AggregationMethod }, api_name: :method

      # @!attribute metric
      #   The metric configuration for an aggregation, defining what field/field_source to
      #   measure and the aggregation function to apply.
      #
      #   @return [Privy::Models::AggregationMetric]
      required :metric, -> { Privy::AggregationMetric }

      # @!attribute name
      #   The name of the aggregation.
      #
      #   @return [String]
      required :name, String

      # @!attribute window
      #   The time window configuration for an aggregation.
      #
      #   @return [Privy::Models::AggregationWindow]
      required :window, -> { Privy::AggregationWindow }

      # @!attribute conditions
      #   Optional conditions to filter events before aggregation.
      #
      #   @return [Array<Privy::Models::EthereumTransactionCondition, Privy::Models::EthereumCalldataCondition, Privy::Models::EthereumTypedDataDomainCondition, Privy::Models::EthereumTypedDataMessageCondition, Privy::Models::Ethereum7702AuthorizationCondition, Privy::Models::TempoTransactionCondition, Privy::Models::SolanaProgramInstructionCondition, Privy::Models::SolanaSystemProgramInstructionCondition, Privy::Models::SolanaTokenProgramInstructionCondition, Privy::Models::SystemCondition, Privy::Models::TronTransactionCondition, Privy::Models::TronCalldataCondition, Privy::Models::SuiTransactionCommandCondition, Privy::Models::SuiTransferObjectsCommandCondition, Privy::Models::ActionRequestBodyCondition, Privy::Models::AggregationCondition>, nil]
      optional :conditions, -> { Privy::Internal::Type::ArrayOf[union: Privy::PolicyCondition] }

      # @!attribute group_by
      #   Optional grouping configuration for bucketing metrics.
      #
      #   @return [Array<Privy::Models::AggregationGroupBy>, nil]
      optional :group_by, -> { Privy::Internal::Type::ArrayOf[Privy::AggregationGroupBy] }

      # @!attribute owner
      #   The owner of the resource, specified as a Privy user ID, a P-256 public key, or
      #   null to remove the current owner.
      #
      #   @return [Privy::Models::OwnerInputUser, Privy::Models::OwnerInputPublicKey, nil]
      optional :owner, union: -> { Privy::OwnerInput }, nil?: true

      # @!attribute owner_id
      #   The key quorum ID to set as the owner of the resource. If you provide this, do
      #   not specify an owner.
      #
      #   @return [String, nil]
      optional :owner_id, String, nil?: true

      # @!method initialize(method_:, metric:, name:, window:, conditions: nil, group_by: nil, owner: nil, owner_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::AggregationInput} for more details.
      #
      #   Input for creating an aggregation.
      #
      #   @param method_ [Symbol, Privy::Models::AggregationMethod] The RPC method this aggregation applies to.
      #
      #   @param metric [Privy::Models::AggregationMetric] The metric configuration for an aggregation, defining what field/field_source to
      #
      #   @param name [String] The name of the aggregation.
      #
      #   @param window [Privy::Models::AggregationWindow] The time window configuration for an aggregation.
      #
      #   @param conditions [Array<Privy::Models::EthereumTransactionCondition, Privy::Models::EthereumCalldataCondition, Privy::Models::EthereumTypedDataDomainCondition, Privy::Models::EthereumTypedDataMessageCondition, Privy::Models::Ethereum7702AuthorizationCondition, Privy::Models::TempoTransactionCondition, Privy::Models::SolanaProgramInstructionCondition, Privy::Models::SolanaSystemProgramInstructionCondition, Privy::Models::SolanaTokenProgramInstructionCondition, Privy::Models::SystemCondition, Privy::Models::TronTransactionCondition, Privy::Models::TronCalldataCondition, Privy::Models::SuiTransactionCommandCondition, Privy::Models::SuiTransferObjectsCommandCondition, Privy::Models::ActionRequestBodyCondition, Privy::Models::AggregationCondition>] Optional conditions to filter events before aggregation.
      #
      #   @param group_by [Array<Privy::Models::AggregationGroupBy>] Optional grouping configuration for bucketing metrics.
      #
      #   @param owner [Privy::Models::OwnerInputUser, Privy::Models::OwnerInputPublicKey, nil] The owner of the resource, specified as a Privy user ID, a P-256 public key, or
      #
      #   @param owner_id [String, nil] The key quorum ID to set as the owner of the resource. If you provide this, do n
    end
  end
end
