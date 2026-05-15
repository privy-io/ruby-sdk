# frozen_string_literal: true

module Privy
  module Models
    class TransactionScanningAssetDiff < Privy::Internal::Type::BaseModel
      # @!attribute asset
      #   Information about the moving asset in a transaction scan.
      #
      #   @return [Privy::Models::TransactionScanningAssetInfo]
      required :asset, -> { Privy::TransactionScanningAssetInfo }

      # @!attribute in_
      #
      #   @return [Array<Privy::Models::TransactionScanningAssetValue>]
      required :in_,
               -> {
                 Privy::Internal::Type::ArrayOf[Privy::TransactionScanningAssetValue]
               },
               api_name: :in

      # @!attribute out
      #
      #   @return [Array<Privy::Models::TransactionScanningAssetValue>]
      required :out, -> { Privy::Internal::Type::ArrayOf[Privy::TransactionScanningAssetValue] }

      # @!method initialize(asset:, in_:, out:)
      #   An asset diff representing assets entering/leaving a wallet.
      #
      #   @param asset [Privy::Models::TransactionScanningAssetInfo] Information about the moving asset in a transaction scan.
      #
      #   @param in_ [Array<Privy::Models::TransactionScanningAssetValue>]
      #
      #   @param out [Array<Privy::Models::TransactionScanningAssetValue>]
    end
  end
end
