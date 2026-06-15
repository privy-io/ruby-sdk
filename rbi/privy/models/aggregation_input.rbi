# typed: strong

module Privy
  module Models
    class AggregationInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::AggregationInput, Privy::Internal::AnyHash)
        end

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
                Privy::AggregationCondition,
                Privy::MessageSigningCondition
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
                Privy::AggregationCondition::OrHash,
                Privy::MessageSigningCondition::OrHash
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

      # The owner of the resource, specified as a Privy user ID, a P-256 public key, or
      # null to remove the current owner.
      sig do
        returns(
          T.nilable(T.any(Privy::OwnerInputUser, Privy::OwnerInputPublicKey))
        )
      end
      attr_accessor :owner

      # The key quorum ID to set as the owner of the resource. If you provide this, do
      # not specify an owner.
      sig { returns(T.nilable(String)) }
      attr_accessor :owner_id

      # Input for creating an aggregation.
      sig do
        params(
          method_: Privy::AggregationMethod::OrSymbol,
          metric: Privy::AggregationMetric::OrHash,
          name: String,
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
                Privy::AggregationCondition::OrHash,
                Privy::MessageSigningCondition::OrHash
              )
            ],
          group_by: T::Array[Privy::AggregationGroupBy::OrHash],
          owner:
            T.nilable(
              T.any(
                Privy::OwnerInputUser::OrHash,
                Privy::OwnerInputPublicKey::OrHash
              )
            ),
          owner_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The RPC method this aggregation applies to.
        method_:,
        # The metric configuration for an aggregation, defining what field/field_source to
        # measure and the aggregation function to apply.
        metric:,
        # The name of the aggregation.
        name:,
        # A rolling time window defined by a duration in seconds.
        window:,
        # Optional conditions to filter events before aggregation.
        conditions: nil,
        # Optional grouping configuration for bucketing metrics.
        group_by: nil,
        # The owner of the resource, specified as a Privy user ID, a P-256 public key, or
        # null to remove the current owner.
        owner: nil,
        # The key quorum ID to set as the owner of the resource. If you provide this, do
        # not specify an owner.
        owner_id: nil
      )
      end

      sig do
        override.returns(
          {
            method_: Privy::AggregationMethod::OrSymbol,
            metric: Privy::AggregationMetric,
            name: String,
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
                  Privy::AggregationCondition,
                  Privy::MessageSigningCondition
                )
              ],
            group_by: T::Array[Privy::AggregationGroupBy],
            owner:
              T.nilable(
                T.any(Privy::OwnerInputUser, Privy::OwnerInputPublicKey)
              ),
            owner_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
