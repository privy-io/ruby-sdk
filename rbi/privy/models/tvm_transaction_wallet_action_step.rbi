# typed: strong

module Privy
  module Models
    class TvmTransactionWalletActionStep < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TvmTransactionWalletActionStep, Privy::Internal::AnyHash)
        end

      # CAIP-2 chain identifier for the Tron network.
      sig { returns(String) }
      attr_accessor :caip2

      # Status of a TVM (Tron) step in a wallet action.
      sig { returns(Privy::TvmWalletActionStepStatus::TaggedSymbol) }
      attr_accessor :status

      # The Tron transaction ID. Null until broadcast.
      sig { returns(T.nilable(String)) }
      attr_accessor :transaction_id

      sig { returns(Privy::TvmTransactionWalletActionStep::Type::TaggedSymbol) }
      attr_accessor :type

      # A description of why a wallet action (or a step within a wallet action) failed.
      sig { returns(T.nilable(Privy::FailureReason)) }
      attr_reader :failure_reason

      sig { params(failure_reason: Privy::FailureReason::OrHash).void }
      attr_writer :failure_reason

      # A wallet action step consisting of a TVM (Tron) transaction.
      sig do
        params(
          caip2: String,
          status: Privy::TvmWalletActionStepStatus::OrSymbol,
          transaction_id: T.nilable(String),
          type: Privy::TvmTransactionWalletActionStep::Type::OrSymbol,
          failure_reason: Privy::FailureReason::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # CAIP-2 chain identifier for the Tron network.
        caip2:,
        # Status of a TVM (Tron) step in a wallet action.
        status:,
        # The Tron transaction ID. Null until broadcast.
        transaction_id:,
        type:,
        # A description of why a wallet action (or a step within a wallet action) failed.
        failure_reason: nil
      )
      end

      sig do
        override.returns(
          {
            caip2: String,
            status: Privy::TvmWalletActionStepStatus::TaggedSymbol,
            transaction_id: T.nilable(String),
            type: Privy::TvmTransactionWalletActionStep::Type::TaggedSymbol,
            failure_reason: Privy::FailureReason
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::TvmTransactionWalletActionStep::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TVM_TRANSACTION =
          T.let(
            :tvm_transaction,
            Privy::TvmTransactionWalletActionStep::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::TvmTransactionWalletActionStep::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
