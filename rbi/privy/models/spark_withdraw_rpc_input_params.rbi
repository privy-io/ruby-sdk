# typed: strong

module Privy
  module Models
    class SparkWithdrawRpcInputParams < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::SparkWithdrawRpcInputParams, Privy::Internal::AnyHash)
        end

      # The exit speed for a cooperative withdrawal from Spark to L1.
      sig { returns(Privy::SparkExitSpeed::OrSymbol) }
      attr_accessor :exit_speed

      sig { returns(String) }
      attr_accessor :onchain_address

      sig { returns(T.nilable(Float)) }
      attr_reader :amount_sats

      sig { params(amount_sats: Float).void }
      attr_writer :amount_sats

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :deduct_fee_from_withdrawal_amount

      sig { params(deduct_fee_from_withdrawal_amount: T::Boolean).void }
      attr_writer :deduct_fee_from_withdrawal_amount

      sig { returns(T.nilable(Float)) }
      attr_reader :fee_amount_sats

      sig { params(fee_amount_sats: Float).void }
      attr_writer :fee_amount_sats

      sig { returns(T.nilable(String)) }
      attr_reader :fee_quote_id

      sig { params(fee_quote_id: String).void }
      attr_writer :fee_quote_id

      # Parameters for the Spark `withdraw` RPC.
      sig do
        params(
          exit_speed: Privy::SparkExitSpeed::OrSymbol,
          onchain_address: String,
          amount_sats: Float,
          deduct_fee_from_withdrawal_amount: T::Boolean,
          fee_amount_sats: Float,
          fee_quote_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The exit speed for a cooperative withdrawal from Spark to L1.
        exit_speed:,
        onchain_address:,
        amount_sats: nil,
        deduct_fee_from_withdrawal_amount: nil,
        fee_amount_sats: nil,
        fee_quote_id: nil
      )
      end

      sig do
        override.returns(
          {
            exit_speed: Privy::SparkExitSpeed::OrSymbol,
            onchain_address: String,
            amount_sats: Float,
            deduct_fee_from_withdrawal_amount: T::Boolean,
            fee_amount_sats: Float,
            fee_quote_id: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
