# typed: strong

module Privy
  module Models
    class TransactionScanningValidationErrorResult < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::TransactionScanningValidationErrorResult,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :error

      sig do
        returns(
          Privy::TransactionScanningValidationErrorResult::Status::OrSymbol
        )
      end
      attr_accessor :status

      # A failed validation result from a transaction scan.
      sig do
        params(
          error: String,
          status:
            Privy::TransactionScanningValidationErrorResult::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(error:, status:)
      end

      sig do
        override.returns(
          {
            error: String,
            status:
              Privy::TransactionScanningValidationErrorResult::Status::OrSymbol
          }
        )
      end
      def to_hash
      end

      module Status
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Privy::TransactionScanningValidationErrorResult::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ERROR =
          T.let(
            :Error,
            Privy::TransactionScanningValidationErrorResult::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::TransactionScanningValidationErrorResult::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
