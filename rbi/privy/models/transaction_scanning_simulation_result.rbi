# typed: strong

module Privy
  module Models
    # The simulation result from a transaction scan.
    module TransactionScanningSimulationResult
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::TransactionScanningSimulationErrorResult,
            Privy::TransactionScanningSimulationSuccessResult
          )
        end

      sig do
        override.returns(
          T::Array[Privy::TransactionScanningSimulationResult::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
