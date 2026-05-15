# frozen_string_literal: true

module Privy
  module Models
    class TransactionScanningParams < Privy::Internal::Type::BaseModel
      # @!attribute block_tag
      #
      #   @return [String, nil]
      optional :block_tag, String

      # @!attribute calldata
      #   Decoded calldata from a scanned transaction.
      #
      #   @return [Privy::Models::TransactionScanningCalldata, nil]
      optional :calldata, -> { Privy::TransactionScanningCalldata }

      # @!attribute chain
      #
      #   @return [String, nil]
      optional :chain, String

      # @!attribute data
      #
      #   @return [String, nil]
      optional :data, String

      # @!attribute from
      #
      #   @return [String, nil]
      optional :from, String

      # @!attribute gas
      #
      #   @return [String, nil]
      optional :gas, String

      # @!attribute gas_price
      #
      #   @return [String, nil]
      optional :gas_price, String

      # @!attribute to
      #
      #   @return [String, nil]
      optional :to, String

      # @!attribute value
      #
      #   @return [String, nil]
      optional :value, String

      # @!method initialize(block_tag: nil, calldata: nil, chain: nil, data: nil, from: nil, gas: nil, gas_price: nil, to: nil, value: nil)
      #   The parameters of the scanned transaction.
      #
      #   @param block_tag [String]
      #
      #   @param calldata [Privy::Models::TransactionScanningCalldata] Decoded calldata from a scanned transaction.
      #
      #   @param chain [String]
      #
      #   @param data [String]
      #
      #   @param from [String]
      #
      #   @param gas [String]
      #
      #   @param gas_price [String]
      #
      #   @param to [String]
      #
      #   @param value [String]
    end
  end
end
