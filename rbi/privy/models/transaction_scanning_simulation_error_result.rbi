# typed: strong

module Privy
  module Models
    class TransactionScanningSimulationErrorResult < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::TransactionScanningSimulationErrorResult,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :error

      sig do
        returns(
          Privy::TransactionScanningSimulationErrorResult::Status::OrSymbol
        )
      end
      attr_accessor :status

      # A failed simulation result from a transaction scan.
      sig do
        params(
          error: String,
          status:
            Privy::TransactionScanningSimulationErrorResult::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(error:, status:)
      end

      sig do
        override.returns(
          {
            error: String,
            status:
              Privy::TransactionScanningSimulationErrorResult::Status::OrSymbol
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
              Privy::TransactionScanningSimulationErrorResult::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ERROR =
          T.let(
            :Error,
            Privy::TransactionScanningSimulationErrorResult::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::TransactionScanningSimulationErrorResult::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
