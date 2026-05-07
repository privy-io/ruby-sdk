# typed: strong

module Privy
  module Models
    class TransactionScanningExposure < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TransactionScanningExposure, Privy::Internal::AnyHash)
        end

      # Information about the moving asset in a transaction scan.
      sig { returns(Privy::TransactionScanningAssetInfo) }
      attr_reader :asset

      sig { params(asset: Privy::TransactionScanningAssetInfo::OrHash).void }
      attr_writer :asset

      sig { returns(T::Hash[Symbol, Privy::TransactionScanningAssetValue]) }
      attr_accessor :spenders

      # An exposure representing assets approved to spend.
      sig do
        params(
          asset: Privy::TransactionScanningAssetInfo::OrHash,
          spenders:
            T::Hash[Symbol, Privy::TransactionScanningAssetValue::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        # Information about the moving asset in a transaction scan.
        asset:,
        spenders:
      )
      end

      sig do
        override.returns(
          {
            asset: Privy::TransactionScanningAssetInfo,
            spenders: T::Hash[Symbol, Privy::TransactionScanningAssetValue]
          }
        )
      end
      def to_hash
      end
    end
  end
end
