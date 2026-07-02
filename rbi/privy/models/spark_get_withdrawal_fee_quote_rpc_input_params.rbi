# typed: strong

module Privy
  module Models
    class SparkGetWithdrawalFeeQuoteRpcInputParams < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::SparkGetWithdrawalFeeQuoteRpcInputParams,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(Float) }
      attr_accessor :amount_sats

      sig { returns(String) }
      attr_accessor :onchain_address

      # Parameters for the Spark `getWithdrawalFeeQuote` RPC.
      sig do
        params(amount_sats: Float, onchain_address: String).returns(
          T.attached_class
        )
      end
      def self.new(amount_sats:, onchain_address:)
      end

      sig { override.returns({ amount_sats: Float, onchain_address: String }) }
      def to_hash
      end
    end
  end
end
