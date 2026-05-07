# frozen_string_literal: true

module Privy
  module Models
    class GasSpendRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute end_timestamp
      #   Unix timestamp in milliseconds, exclusive.
      #
      #   @return [Float]
      required :end_timestamp, Float

      # @!attribute start_timestamp
      #   Unix timestamp in milliseconds, inclusive.
      #
      #   @return [Float]
      required :start_timestamp, Float

      # @!attribute wallet_ids
      #   List of wallet IDs to query gas spend for. Maximum 100.
      #
      #   @return [Array<String>]
      required :wallet_ids, Privy::Internal::Type::ArrayOf[String]

      # @!method initialize(end_timestamp:, start_timestamp:, wallet_ids:)
      #   Query parameters for getting gas spend for a set of wallets.
      #
      #   @param end_timestamp [Float] Unix timestamp in milliseconds, exclusive.
      #
      #   @param start_timestamp [Float] Unix timestamp in milliseconds, inclusive.
      #
      #   @param wallet_ids [Array<String>] List of wallet IDs to query gas spend for. Maximum 100.
    end
  end
end
