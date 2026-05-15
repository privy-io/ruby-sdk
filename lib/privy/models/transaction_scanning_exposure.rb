# frozen_string_literal: true

module Privy
  module Models
    class TransactionScanningExposure < Privy::Internal::Type::BaseModel
      # @!attribute asset
      #   Information about the moving asset in a transaction scan.
      #
      #   @return [Privy::Models::TransactionScanningAssetInfo]
      required :asset, -> { Privy::TransactionScanningAssetInfo }

      # @!attribute spenders
      #
      #   @return [Hash{Symbol=>Privy::Models::TransactionScanningAssetValue}]
      required :spenders, -> { Privy::Internal::Type::HashOf[Privy::TransactionScanningAssetValue] }

      # @!method initialize(asset:, spenders:)
      #   An exposure representing assets approved to spend.
      #
      #   @param asset [Privy::Models::TransactionScanningAssetInfo] Information about the moving asset in a transaction scan.
      #
      #   @param spenders [Hash{Symbol=>Privy::Models::TransactionScanningAssetValue}]
    end
  end
end
