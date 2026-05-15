# typed: strong

module Privy
  module Models
    class TransactionScanningResponseBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::TransactionScanningResponseBody,
            Privy::Internal::AnyHash
          )
        end

      # The simulation result from a transaction scan.
      sig do
        returns(
          T.any(
            Privy::TransactionScanningSimulationErrorResult,
            Privy::TransactionScanningSimulationSuccessResult
          )
        )
      end
      attr_accessor :simulation

      # The validation result from a transaction scan.
      sig do
        returns(
          T.any(
            Privy::TransactionScanningValidationErrorResult,
            Privy::TransactionScanningValidationSuccessResult
          )
        )
      end
      attr_accessor :validation

      # The response from scanning a transaction.
      sig do
        params(
          simulation:
            T.any(
              Privy::TransactionScanningSimulationErrorResult::OrHash,
              Privy::TransactionScanningSimulationSuccessResult::OrHash
            ),
          validation:
            T.any(
              Privy::TransactionScanningValidationErrorResult::OrHash,
              Privy::TransactionScanningValidationSuccessResult::OrHash
            )
        ).returns(T.attached_class)
      end
      def self.new(
        # The simulation result from a transaction scan.
        simulation:,
        # The validation result from a transaction scan.
        validation:
      )
      end

      sig do
        override.returns(
          {
            simulation:
              T.any(
                Privy::TransactionScanningSimulationErrorResult,
                Privy::TransactionScanningSimulationSuccessResult
              ),
            validation:
              T.any(
                Privy::TransactionScanningValidationErrorResult,
                Privy::TransactionScanningValidationSuccessResult
              )
          }
        )
      end
      def to_hash
      end
    end
  end
end
