# typed: strong

module Privy
  module Models
    class TransactionScanningAssetDiff < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TransactionScanningAssetDiff, Privy::Internal::AnyHash)
        end

      # Information about the moving asset in a transaction scan.
      sig { returns(Privy::TransactionScanningAssetInfo) }
      attr_reader :asset

      sig { params(asset: Privy::TransactionScanningAssetInfo::OrHash).void }
      attr_writer :asset

      sig { returns(T::Array[Privy::TransactionScanningAssetValue]) }
      attr_accessor :in_

      sig { returns(T::Array[Privy::TransactionScanningAssetValue]) }
      attr_accessor :out

      # An asset diff representing assets entering/leaving a wallet.
      sig do
        params(
          asset: Privy::TransactionScanningAssetInfo::OrHash,
          in_: T::Array[Privy::TransactionScanningAssetValue::OrHash],
          out: T::Array[Privy::TransactionScanningAssetValue::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        # Information about the moving asset in a transaction scan.
        asset:,
        in_:,
        out:
      )
      end

      sig do
        override.returns(
          {
            asset: Privy::TransactionScanningAssetInfo,
            in_: T::Array[Privy::TransactionScanningAssetValue],
            out: T::Array[Privy::TransactionScanningAssetValue]
          }
        )
      end
      def to_hash
      end
    end
  end
end
