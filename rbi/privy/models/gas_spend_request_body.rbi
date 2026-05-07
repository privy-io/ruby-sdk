# typed: strong

module Privy
  module Models
    class GasSpendRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::GasSpendRequestBody, Privy::Internal::AnyHash)
        end

      # Unix timestamp in milliseconds, exclusive.
      sig { returns(Float) }
      attr_accessor :end_timestamp

      # Unix timestamp in milliseconds, inclusive.
      sig { returns(Float) }
      attr_accessor :start_timestamp

      # List of wallet IDs to query gas spend for. Maximum 100.
      sig { returns(T::Array[String]) }
      attr_accessor :wallet_ids

      # Query parameters for getting gas spend for a set of wallets.
      sig do
        params(
          end_timestamp: Float,
          start_timestamp: Float,
          wallet_ids: T::Array[String]
        ).returns(T.attached_class)
      end
      def self.new(
        # Unix timestamp in milliseconds, exclusive.
        end_timestamp:,
        # Unix timestamp in milliseconds, inclusive.
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
