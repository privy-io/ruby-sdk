# typed: strong

module Privy
  module Models
    class TransactionScanningValidationSuccessResult < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::TransactionScanningValidationSuccessResult,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :result_type

      sig do
        returns(
          Privy::TransactionScanningValidationSuccessResult::Status::OrSymbol
        )
      end
      attr_accessor :status

      # A successful validation result from a transaction scan.
      sig do
        params(
          result_type: String,
          status:
            Privy::TransactionScanningValidationSuccessResult::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(result_type:, status:)
      end

      sig do
        override.returns(
          {
            result_type: String,
            status:
              Privy::TransactionScanningValidationSuccessResult::Status::OrSymbol
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
              Privy::TransactionScanningValidationSuccessResult::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SUCCESS =
          T.let(
            :Success,
            Privy::TransactionScanningValidationSuccessResult::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::TransactionScanningValidationSuccessResult::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
