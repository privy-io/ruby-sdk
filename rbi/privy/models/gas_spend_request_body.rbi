# typed: strong

module Privy
  module Models
    class GasSpendRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::GasSpendRequestBody, Privy::Internal::AnyHash)
        end

      # Unix timestamp in milliseconds, exclusive. Must be greater than or equal to
      # `start_timestamp`, and the range from `start_timestamp` to `end_timestamp` must
      # not exceed 30 days.
      sig { returns(Float) }
      attr_accessor :end_timestamp

      # Unix timestamp in milliseconds, inclusive. Must be less than or equal to
      # `end_timestamp`, and the range from `start_timestamp` to `end_timestamp` must
      # not exceed 30 days.
      sig { returns(Float) }
      attr_accessor :start_timestamp

      # List of wallet IDs to query gas spend for. Maximum 100.
      sig { returns(T::Array[String]) }
      attr_accessor :wallet_ids

      # Query parameters for getting gas spend for a set of wallets. The time range from
      # `start_timestamp` to `end_timestamp` must not exceed 30 days.
      sig do
        params(
          end_timestamp: Float,
          start_timestamp: Float,
          wallet_ids: T::Array[String]
        ).returns(T.attached_class)
      end
      def self.new(
        # Unix timestamp in milliseconds, exclusive. Must be greater than or equal to
        # `start_timestamp`, and the range from `start_timestamp` to `end_timestamp` must
        # not exceed 30 days.
        end_timestamp:,
        # Unix timestamp in milliseconds, inclusive. Must be less than or equal to
        # `end_timestamp`, and the range from `start_timestamp` to `end_timestamp` must
        # not exceed 30 days.
        start_timestamp:,
        # List of wallet IDs to query gas spend for. Maximum 100.
        wallet_ids:
      )
      end

      sig do
        override.returns(
          {
            end_timestamp: Float,
            start_timestamp: Float,
            wallet_ids: T::Array[String]
          }
        )
      end
      def to_hash
      end
    end
  end
end
