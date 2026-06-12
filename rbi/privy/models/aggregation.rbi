# typed: strong

module Privy
  module Models
    class Aggregation < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::Aggregation, Privy::Internal::AnyHash) }

      # Unique ID of the aggregation.
      sig { returns(String) }
      attr_accessor :id

      # Unix timestamp of when the aggregation was created in milliseconds.
      sig { returns(Float) }
      attr_accessor :created_at

      # The RPC method this aggregation applies to.
      sig { returns(Privy::AggregationMethod::OrSymbol) }
      attr_accessor :method_

      # The metric configuration for an aggregation, defining what field/field_source to
      # measure and the aggregation function to apply.
      sig { returns(Privy::AggregationMetric) }
      attr_reader :metric

      sig { params(metric: Privy::AggregationMetric::OrHash).void }
      attr_writer :metric

      # The name of the aggregation.
      sig { returns(String) }
      attr_accessor :name

      # The key quorum ID of the owner of the aggregation.
      sig { returns(T.nilable(String)) }
      attr_accessor :owner_id

      # A rolling time window defined by a duration in seconds.
      sig { returns(Privy::AggregationWindow) }
      attr_reader :window

      sig { params(window: Privy::AggregationWindow::OrHash).void }
      attr_writer :window

      # Optional conditions to filter events before aggregation.
      sig do
        returns(
          T.nilable(
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
        )
      end
      attr_reader :conditions

      sig do
        params(
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
            ]
        ).void
      end
      attr_writer :conditions

      # Optional grouping configuration for bucketing metrics.
      sig { returns(T.nilable(T::Array[Privy::AggregationGroupBy])) }
      attr_reader :group_by

      sig { params(group_by: T::Array[Privy::AggregationGroupBy::OrHash]).void }
      attr_writer :group_by

      # An aggregation that measures and tracks metrics over a period of time.
      sig do
        params(
          id: String,
          created_at: Float,
          method_: Privy::AggregationMethod::OrSymbol,
          metric: Privy::AggregationMetric::OrHash,
          name: String,
          owner_id: T.nilable(String),
          window: Privy::AggregationWindow::OrHash,
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
          group_by: T::Array[Privy::AggregationGroupBy::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique ID of the aggregation.
        id:,
        # Unix timestamp of when the aggregation was created in milliseconds.
        created_at:,
        # The RPC method this aggregation applies to.
        method_:,
        # The metric configuration for an aggregation, defining what field/field_source to
        # measure and the aggregation function to apply.
        metric:,
        # The name of the aggregation.
        name:,
        # The key quorum ID of the owner of the aggregation.
        owner_id:,
        # A rolling time window defined by a duration in seconds.
        window:,
        # Optional conditions to filter events before aggregation.
        conditions: nil,
        # Optional grouping configuration for bucketing metrics.
        group_by: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Float,
            method_: Privy::AggregationMethod::OrSymbol,
            metric: Privy::AggregationMetric,
            name: String,
            owner_id: T.nilable(String),
            window: Privy::AggregationWindow,
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
            group_by: T::Array[Privy::AggregationGroupBy]
          }
        )
      end
      def to_hash
      end
    end
  end
end
