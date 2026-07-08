# typed: strong

module Privy
  module Models
    class SparkCoopExitFeeQuote < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::SparkCoopExitFeeQuote, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :created_at

      sig { returns(String) }
      attr_accessor :expires_at

      # A currency amount with its original value and unit.
      sig { returns(Privy::SparkCurrencyAmount) }
      attr_reader :l1_broadcast_fee_fast

      sig do
        params(l1_broadcast_fee_fast: Privy::SparkCurrencyAmount::OrHash).void
      end
      attr_writer :l1_broadcast_fee_fast

      # A currency amount with its original value and unit.
      sig { returns(Privy::SparkCurrencyAmount) }
      attr_reader :l1_broadcast_fee_medium

      sig do
        params(l1_broadcast_fee_medium: Privy::SparkCurrencyAmount::OrHash).void
      end
      attr_writer :l1_broadcast_fee_medium

      # A currency amount with its original value and unit.
      sig { returns(Privy::SparkCurrencyAmount) }
      attr_reader :l1_broadcast_fee_slow

      sig do
        params(l1_broadcast_fee_slow: Privy::SparkCurrencyAmount::OrHash).void
      end
      attr_writer :l1_broadcast_fee_slow

      sig { returns(String) }
      attr_accessor :network

      # A currency amount with its original value and unit.
      sig { returns(Privy::SparkCurrencyAmount) }
      attr_reader :total_amount

      sig { params(total_amount: Privy::SparkCurrencyAmount::OrHash).void }
      attr_writer :total_amount

      sig { returns(String) }
      attr_accessor :updated_at

      # A currency amount with its original value and unit.
      sig { returns(Privy::SparkCurrencyAmount) }
      attr_reader :user_fee_fast

      sig { params(user_fee_fast: Privy::SparkCurrencyAmount::OrHash).void }
      attr_writer :user_fee_fast

      # A currency amount with its original value and unit.
      sig { returns(Privy::SparkCurrencyAmount) }
      attr_reader :user_fee_medium

      sig { params(user_fee_medium: Privy::SparkCurrencyAmount::OrHash).void }
      attr_writer :user_fee_medium

      # A currency amount with its original value and unit.
      sig { returns(Privy::SparkCurrencyAmount) }
      attr_reader :user_fee_slow

      sig { params(user_fee_slow: Privy::SparkCurrencyAmount::OrHash).void }
      attr_writer :user_fee_slow

      # A fee quote for a cooperative exit from Spark to Bitcoin L1.
      sig do
        params(
          id: String,
          created_at: String,
          expires_at: String,
          l1_broadcast_fee_fast: Privy::SparkCurrencyAmount::OrHash,
          l1_broadcast_fee_medium: Privy::SparkCurrencyAmount::OrHash,
          l1_broadcast_fee_slow: Privy::SparkCurrencyAmount::OrHash,
          network: String,
          total_amount: Privy::SparkCurrencyAmount::OrHash,
          updated_at: String,
          user_fee_fast: Privy::SparkCurrencyAmount::OrHash,
          user_fee_medium: Privy::SparkCurrencyAmount::OrHash,
          user_fee_slow: Privy::SparkCurrencyAmount::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        created_at:,
        expires_at:,
        # A currency amount with its original value and unit.
        l1_broadcast_fee_fast:,
        # A currency amount with its original value and unit.
        l1_broadcast_fee_medium:,
        # A currency amount with its original value and unit.
        l1_broadcast_fee_slow:,
        network:,
        # A currency amount with its original value and unit.
        total_amount:,
        updated_at:,
        # A currency amount with its original value and unit.
        user_fee_fast:,
        # A currency amount with its original value and unit.
        user_fee_medium:,
        # A currency amount with its original value and unit.
        user_fee_slow:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: String,
            expires_at: String,
            l1_broadcast_fee_fast: Privy::SparkCurrencyAmount,
            l1_broadcast_fee_medium: Privy::SparkCurrencyAmount,
            l1_broadcast_fee_slow: Privy::SparkCurrencyAmount,
            network: String,
            total_amount: Privy::SparkCurrencyAmount,
            updated_at: String,
            user_fee_fast: Privy::SparkCurrencyAmount,
            user_fee_medium: Privy::SparkCurrencyAmount,
            user_fee_slow: Privy::SparkCurrencyAmount
          }
        )
      end
      def to_hash
      end
    end
  end
end
