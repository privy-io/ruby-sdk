# frozen_string_literal: true

module Privy
  module Models
    class GasSpendRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute end_timestamp
      #   Unix timestamp in milliseconds, exclusive. Must be greater than or equal to
      #   `start_timestamp`, and the range from `start_timestamp` to `end_timestamp` must
      #   not exceed 30 days.
      #
      #   @return [Float]
      required :end_timestamp, Float

      # @!attribute start_timestamp
      #   Unix timestamp in milliseconds, inclusive. Must be less than or equal to
      #   `end_timestamp`, and the range from `start_timestamp` to `end_timestamp` must
      #   not exceed 30 days.
      #
      #   @return [Float]
      required :start_timestamp, Float

      # @!attribute wallet_ids
      #   List of wallet IDs to query gas spend for. Maximum 100.
      #
      #   @return [Array<String>]
      required :wallet_ids, Privy::Internal::Type::ArrayOf[String]

      # @!method initialize(end_timestamp:, start_timestamp:, wallet_ids:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::GasSpendRequestBody} for more details.
      #
      #   Query parameters for getting gas spend for a set of wallets. The time range from
      #   `start_timestamp` to `end_timestamp` must not exceed 30 days.
      #
      #   @param end_timestamp [Float] Unix timestamp in milliseconds, exclusive. Must be greater than or equal to `sta
      #
      #   @param start_timestamp [Float] Unix timestamp in milliseconds, inclusive. Must be less than or equal to `end_ti
      #
      #   @param wallet_ids [Array<String>] List of wallet IDs to query gas spend for. Maximum 100.
    end
  end
end
