# frozen_string_literal: true

module Privy
  module Models
    class TransactionScanningAssetInfo < Privy::Internal::Type::BaseModel
      # @!attribute decimals
      #
      #   @return [Float, nil]
      optional :decimals, Float

      # @!attribute logo_url
      #
      #   @return [String, nil]
      optional :logo_url, String

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute symbol
      #
      #   @return [String, nil]
      optional :symbol, String

      # @!attribute type
      #
      #   @return [String, nil]
      optional :type, String

      # @!method initialize(decimals: nil, logo_url: nil, name: nil, symbol: nil, type: nil)
      #   Information about the moving asset in a transaction scan.
      #
      #   @param decimals [Float]
      #   @param logo_url [String]
      #   @param name [String]
      #   @param symbol [String]
      #   @param type [String]
    end
  end
end
