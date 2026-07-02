# typed: strong

module Privy
  module Models
    class SparkCoopExitRequest < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::SparkCoopExitRequest, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :coop_exit_txid

      sig { returns(String) }
      attr_accessor :created_at

      sig { returns(String) }
      attr_accessor :expires_at

      # A currency amount with its original value and unit.
      sig { returns(Privy::SparkCurrencyAmount) }
      attr_reader :fee

      sig { params(fee: Privy::SparkCurrencyAmount::OrHash).void }
      attr_writer :fee

      # A currency amount with its original value and unit.
      sig { returns(Privy::SparkCurrencyAmount) }
      attr_reader :l1_broadcast_fee

      sig { params(l1_broadcast_fee: Privy::SparkCurrencyAmount::OrHash).void }
      attr_writer :l1_broadcast_fee

      sig { returns(String) }
      attr_accessor :network

      sig { returns(String) }
      attr_accessor :status

      sig { returns(String) }
      attr_accessor :updated_at

      # The exit speed for a cooperative withdrawal from Spark to L1.
      sig { returns(T.nilable(Privy::SparkExitSpeed::TaggedSymbol)) }
      attr_reader :exit_speed

      sig { params(exit_speed: Privy::SparkExitSpeed::OrSymbol).void }
      attr_writer :exit_speed

      sig { returns(T.nilable(String)) }
      attr_reader :fee_quote_id

      sig { params(fee_quote_id: String).void }
      attr_writer :fee_quote_id

      # A cooperative exit request from Spark to Bitcoin L1.
      sig do
        params(
          id: String,
          coop_exit_txid: String,
          created_at: String,
          expires_at: String,
          fee: Privy::SparkCurrencyAmount::OrHash,
          l1_broadcast_fee: Privy::SparkCurrencyAmount::OrHash,
          network: String,
          status: String,
          updated_at: String,
          exit_speed: Privy::SparkExitSpeed::OrSymbol,
          fee_quote_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        coop_exit_txid:,
        created_at:,
        expires_at:,
        # A currency amount with its original value and unit.
        fee:,
        # A currency amount with its original value and unit.
        l1_broadcast_fee:,
        network:,
        status:,
        updated_at:,
        # The exit speed for a cooperative withdrawal from Spark to L1.
        exit_speed: nil,
        fee_quote_id: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            coop_exit_txid: String,
            created_at: String,
            expires_at: String,
            fee: Privy::SparkCurrencyAmount,
            l1_broadcast_fee: Privy::SparkCurrencyAmount,
            network: String,
            status: String,
            updated_at: String,
            exit_speed: Privy::SparkExitSpeed::TaggedSymbol,
            fee_quote_id: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
