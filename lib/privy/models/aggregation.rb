# frozen_string_literal: true

module Privy
  module Models
    class Aggregation < Privy::Internal::Type::BaseModel
      # @!attribute id
      #   Unique ID of the aggregation.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   Unix timestamp of when the aggregation was created in milliseconds.
      #
      #   @return [Float]
      required :created_at, Float

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

      # @!attribute owner_id
      #   The key quorum ID of the owner of the aggregation.
      #
      #   @return [String, nil]
      required :owner_id, String, nil?: true

      # @!attribute window
      #   A rolling time window defined by a duration in seconds.
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

      # @!method initialize(id:, created_at:, method_:, metric:, name:, owner_id:, window:, conditions: nil, group_by: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::Aggregation} for more details.
      #
      #   An aggregation that measures and tracks metrics over a period of time.
      #
      #   @param id [String] Unique ID of the aggregation.
      #
      #   @param created_at [Float] Unix timestamp of when the aggregation was created in milliseconds.
      #
      #   @param method_ [Symbol, Privy::Models::AggregationMethod] The RPC method this aggregation applies to.
      #
      #   @param metric [Privy::Models::AggregationMetric] The metric configuration for an aggregation, defining what field/field_source to
      #
      #   @param name [String] The name of the aggregation.
      #
      #   @param owner_id [String, nil] The key quorum ID of the owner of the aggregation.
      #
      #   @param window [Privy::Models::AggregationWindow] A rolling time window defined by a duration in seconds.
      #
      #   @param conditions [Array<Privy::Models::EthereumTransactionCondition, Privy::Models::EthereumCalldataCondition, Privy::Models::EthereumTypedDataDomainCondition, Privy::Models::EthereumTypedDataMessageCondition, Privy::Models::Ethereum7702AuthorizationCondition, Privy::Models::TempoTransactionCondition, Privy::Models::SolanaProgramInstructionCondition, Privy::Models::SolanaSystemProgramInstructionCondition, Privy::Models::SolanaTokenProgramInstructionCondition, Privy::Models::SystemCondition, Privy::Models::TronTransactionCondition, Privy::Models::TronCalldataCondition, Privy::Models::SuiTransactionCommandCondition, Privy::Models::SuiTransferObjectsCommandCondition, Privy::Models::ActionRequestBodyCondition, Privy::Models::AggregationCondition>] Optional conditions to filter events before aggregation.
      #
      #   @param group_by [Array<Privy::Models::AggregationGroupBy>] Optional grouping configuration for bucketing metrics.
    end
  end
end
