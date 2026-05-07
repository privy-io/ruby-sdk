# typed: strong

module Privy
  module Models
    class AppGetGasSpendParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Privy::AppGetGasSpendParams, Privy::Internal::AnyHash)
        end

      sig { returns(Float) }
      attr_accessor :end_timestamp

      sig { returns(Float) }
      attr_accessor :start_timestamp

      sig { returns(T::Array[String]) }
      attr_accessor :wallet_ids

      sig do
        params(
          end_timestamp: Float,
          start_timestamp: Float,
          wallet_ids: T::Array[String],
          request_options: Privy::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        end_timestamp:,
        start_timestamp:,
        wallet_ids:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            end_timestamp: Float,
            start_timestamp: Float,
            wallet_ids: T::Array[String],
            request_options: Privy::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
