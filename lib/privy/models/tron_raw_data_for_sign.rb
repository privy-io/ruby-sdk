# frozen_string_literal: true

module Privy
  module Models
    class TronRawDataForSign < Privy::Internal::Type::BaseModel
      # @!attribute contract
      #
      #   @return [Array<Privy::Models::TronTransferContract, Privy::Models::TronTriggerSmartContract>]
      required :contract, -> { Privy::Internal::Type::ArrayOf[union: Privy::TronContract] }

      # @!attribute expiration
      #
      #   @return [Integer]
      required :expiration, Integer

      # @!attribute ref_block_bytes
      #
      #   @return [String]
      required :ref_block_bytes, String

      # @!attribute ref_block_hash
      #
      #   @return [String]
      required :ref_block_hash, String

      # @!attribute call_value
      #
      #   @return [Integer, nil]
      optional :call_value, Integer

      # @!attribute data
      #
      #   @return [String, nil]
      optional :data, String

      # @!attribute fee_limit
      #
      #   @return [Integer, nil]
      optional :fee_limit, Integer

      # @!attribute timestamp
      #
      #   @return [Integer, nil]
      optional :timestamp, Integer

      # @!method initialize(contract:, expiration:, ref_block_bytes:, ref_block_hash:, call_value: nil, data: nil, fee_limit: nil, timestamp: nil)
      #   Tron raw_data for tron_signTransaction. Block reference fields are required;
      #   caller is responsible for fetching them.
      #
      #   @param contract [Array<Privy::Models::TronTransferContract, Privy::Models::TronTriggerSmartContract>]
      #   @param expiration [Integer]
      #   @param ref_block_bytes [String]
      #   @param ref_block_hash [String]
      #   @param call_value [Integer]
      #   @param data [String]
      #   @param fee_limit [Integer]
      #   @param timestamp [Integer]
    end
  end
end
