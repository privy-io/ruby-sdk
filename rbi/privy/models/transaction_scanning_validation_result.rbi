# typed: strong

module Privy
  module Models
    # The validation result from a transaction scan.
    module TransactionScanningValidationResult
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::TransactionScanningValidationErrorResult,
            Privy::TransactionScanningValidationSuccessResult
          )
        end

      sig do
        override.returns(
          T::Array[Privy::TransactionScanningValidationResult::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
