# frozen_string_literal: true

module Privy
  module Models
    class TronRawDataForSend < Privy::Internal::Type::BaseModel
      # @!attribute contract
      #
      #   @return [Array<Privy::Models::TronTransferContract, Privy::Models::TronTriggerSmartContract>]
      required :contract, -> { Privy::Internal::Type::ArrayOf[union: Privy::TronContract] }

      # @!attribute call_value
      #
      #   @return [Integer, nil]
      optional :call_value, Integer

      # @!attribute data
      #
      #   @return [String, nil]
      optional :data, String

      # @!attribute expiration
      #
      #   @return [Integer, nil]
      optional :expiration, Integer

      # @!attribute fee_limit
      #
      #   @return [Integer, nil]
      optional :fee_limit, Integer

      # @!attribute ref_block_bytes
      #
      #   @return [String, nil]
      optional :ref_block_bytes, String

      # @!attribute ref_block_hash
      #
      #   @return [String, nil]
      optional :ref_block_hash, String

      # @!attribute timestamp
      #
      #   @return [Integer, nil]
      optional :timestamp, Integer

      # @!method initialize(contract:, call_value: nil, data: nil, expiration: nil, fee_limit: nil, ref_block_bytes: nil, ref_block_hash: nil, timestamp: nil)
      #   Tron raw_data for tron_sendTransaction. Block reference fields are optional;
      #   Privy fetches fresh values if omitted.
      #
      #   @param contract [Array<Privy::Models::TronTransferContract, Privy::Models::TronTriggerSmartContract>]
      #   @param call_value [Integer]
      #   @param data [String]
      #   @param expiration [Integer]
      #   @param fee_limit [Integer]
      #   @param ref_block_bytes [String]
      #   @param ref_block_hash [String]
      #   @param timestamp [Integer]
    end
  end
end
