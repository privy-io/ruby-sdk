# frozen_string_literal: true

module Privy
  module Models
    class TransactionScanningAssetValue < Privy::Internal::Type::BaseModel
      # @!attribute usd_price
      #
      #   @return [String, nil]
      optional :usd_price, String

      # @!attribute value
      #
      #   @return [String, nil]
      optional :value, String

      # @!method initialize(usd_price: nil, value: nil)
      #   The value of an asset in a transaction scan result.
      #
      #   @param usd_price [String]
      #   @param value [String]
    end
  end
end
