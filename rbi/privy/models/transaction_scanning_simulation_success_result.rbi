# typed: strong

module Privy
  module Models
    class TransactionScanningSimulationSuccessResult < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::TransactionScanningSimulationSuccessResult,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Privy::TransactionScanningAssetDiff]) }
      attr_accessor :assets_diffs

      sig { returns(T::Array[Privy::TransactionScanningExposure]) }
      attr_accessor :exposures

      sig do
        returns(
          Privy::TransactionScanningSimulationSuccessResult::Status::OrSymbol
        )
      end
      attr_accessor :status

      # The parameters of the scanned transaction.
      sig { returns(T.nilable(Privy::TransactionScanningParams)) }
      attr_reader :params

      sig { params(params: Privy::TransactionScanningParams::OrHash).void }
      attr_writer :params

      # A successful simulation result from a transaction scan.
      sig do
        params(
          assets_diffs: T::Array[Privy::TransactionScanningAssetDiff::OrHash],
          exposures: T::Array[Privy::TransactionScanningExposure::OrHash],
          status:
            Privy::TransactionScanningSimulationSuccessResult::Status::OrSymbol,
          params: Privy::TransactionScanningParams::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        assets_diffs:,
        exposures:,
        status:,
        # The parameters of the scanned transaction.
        params: nil
      )
      end

      sig do
        override.returns(
          {
            assets_diffs: T::Array[Privy::TransactionScanningAssetDiff],
            exposures: T::Array[Privy::TransactionScanningExposure],
            status:
              Privy::TransactionScanningSimulationSuccessResult::Status::OrSymbol,
            params: Privy::TransactionScanningParams
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
              Privy::TransactionScanningSimulationSuccessResult::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SUCCESS =
          T.let(
            :Success,
            Privy::TransactionScanningSimulationSuccessResult::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::TransactionScanningSimulationSuccessResult::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
