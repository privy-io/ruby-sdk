# typed: strong

module Privy
  module Models
    class EvmTransactionWalletActionStep < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::EvmTransactionWalletActionStep, Privy::Internal::AnyHash)
        end

      # CAIP-2 chain identifier of the transaction, containing the chain ID.
      sig { returns(String) }
      attr_accessor :caip2

      # Status of an EVM step in a wallet action.
      sig { returns(Privy::EvmWalletActionStepStatus::TaggedSymbol) }
      attr_accessor :status

      # The transaction hash for this step. May change while the step status is
      # non-terminal.
      sig { returns(T.nilable(String)) }
      attr_accessor :transaction_hash

      sig { returns(Privy::EvmTransactionWalletActionStep::Type::TaggedSymbol) }
      attr_accessor :type

      # A description of why a wallet action (or a step within a wallet action) failed.
      sig { returns(T.nilable(Privy::FailureReason)) }
      attr_reader :failure_reason

      sig { params(failure_reason: Privy::FailureReason::OrHash).void }
      attr_writer :failure_reason

      # A wallet action step consisting of an EVM transaction.
      sig do
        params(
          caip2: String,
          status: Privy::EvmWalletActionStepStatus::OrSymbol,
          transaction_hash: T.nilable(String),
          type: Privy::EvmTransactionWalletActionStep::Type::OrSymbol,
          failure_reason: Privy::FailureReason::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # CAIP-2 chain identifier of the transaction, containing the chain ID.
        caip2:,
        # Status of an EVM step in a wallet action.
        status:,
        # The transaction hash for this step. May change while the step status is
        # non-terminal.
        transaction_hash:,
        type:,
        # A description of why a wallet action (or a step within a wallet action) failed.
        failure_reason: nil
      )
      end

      sig do
        override.returns(
          {
            caip2: String,
            status: Privy::EvmWalletActionStepStatus::TaggedSymbol,
            transaction_hash: T.nilable(String),
            type: Privy::EvmTransactionWalletActionStep::Type::TaggedSymbol,
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
            T.all(Symbol, Privy::EvmTransactionWalletActionStep::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EVM_TRANSACTION =
          T.let(
            :evm_transaction,
            Privy::EvmTransactionWalletActionStep::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::EvmTransactionWalletActionStep::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
