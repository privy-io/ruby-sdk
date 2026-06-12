# typed: strong

module Privy
  module Models
    class SvmTransactionWalletActionStep < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::SvmTransactionWalletActionStep, Privy::Internal::AnyHash)
        end

      # CAIP-2 chain identifier for the Solana network.
      sig { returns(String) }
      attr_accessor :caip2

      # Status of an SVM step in a wallet action.
      sig { returns(Privy::SvmWalletActionStepStatus::TaggedSymbol) }
      attr_accessor :status

      # The Solana transaction signature (base58-encoded). Null until broadcast.
      sig { returns(T.nilable(String)) }
      attr_accessor :transaction_signature

      sig { returns(Privy::SvmTransactionWalletActionStep::Type::TaggedSymbol) }
      attr_accessor :type

      # A description of why a wallet action (or a step within a wallet action) failed.
      sig { returns(T.nilable(Privy::FailureReason)) }
      attr_reader :failure_reason

      sig { params(failure_reason: Privy::FailureReason::OrHash).void }
      attr_writer :failure_reason

      # Whether this step has reached on-chain finality. Absent until finality is
      # confirmed.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :finalized

      sig { params(finalized: T::Boolean).void }
      attr_writer :finalized

      # Amount charged in USD for gas sponsorship on this step.
      sig { returns(T.nilable(String)) }
      attr_reader :gas_credits_charged_usd

      sig { params(gas_credits_charged_usd: String).void }
      attr_writer :gas_credits_charged_usd

      # A wallet action step consisting of an SVM (Solana) transaction.
      sig do
        params(
          caip2: String,
          status: Privy::SvmWalletActionStepStatus::OrSymbol,
          transaction_signature: T.nilable(String),
          type: Privy::SvmTransactionWalletActionStep::Type::OrSymbol,
          failure_reason: Privy::FailureReason::OrHash,
          finalized: T::Boolean,
          gas_credits_charged_usd: String
        ).returns(T.attached_class)
      end
      def self.new(
        # CAIP-2 chain identifier for the Solana network.
        caip2:,
        # Status of an SVM step in a wallet action.
        status:,
        # The Solana transaction signature (base58-encoded). Null until broadcast.
        transaction_signature:,
        type:,
        # A description of why a wallet action (or a step within a wallet action) failed.
        failure_reason: nil,
        # Whether this step has reached on-chain finality. Absent until finality is
        # confirmed.
        finalized: nil,
        # Amount charged in USD for gas sponsorship on this step.
        gas_credits_charged_usd: nil
      )
      end

      sig do
        override.returns(
          {
            caip2: String,
            status: Privy::SvmWalletActionStepStatus::TaggedSymbol,
            transaction_signature: T.nilable(String),
            type: Privy::SvmTransactionWalletActionStep::Type::TaggedSymbol,
            failure_reason: Privy::FailureReason,
            finalized: T::Boolean,
            gas_credits_charged_usd: String
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::SvmTransactionWalletActionStep::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SVM_TRANSACTION =
          T.let(
            :svm_transaction,
            Privy::SvmTransactionWalletActionStep::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::SvmTransactionWalletActionStep::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
