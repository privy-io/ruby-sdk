# typed: strong

module Privy
  module Models
    module Wallets
      class EvmTransactionWalletActionStep < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::Wallets::EvmTransactionWalletActionStep,
              Privy::Internal::AnyHash
            )
          end

        # CAIP-2 chain identifier of the transaction, containing the chain ID.
        sig { returns(String) }
        attr_accessor :caip2

        # Status of an EVM step in a wallet action.
        sig { returns(Privy::Wallets::EvmWalletActionStepStatus::TaggedSymbol) }
        attr_accessor :status

        # The transaction hash for this step. May change while the step status is
        # non-terminal.
        sig { returns(T.nilable(String)) }
        attr_accessor :transaction_hash

        sig do
          returns(
            Privy::Wallets::EvmTransactionWalletActionStep::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        # A description of why a wallet action (or a step within a wallet action) failed.
        sig { returns(T.nilable(Privy::Wallets::FailureReason)) }
        attr_reader :failure_reason

        sig do
          params(failure_reason: Privy::Wallets::FailureReason::OrHash).void
        end
        attr_writer :failure_reason

        # Whether this step has reached on-chain finality. Absent until finality is
        # confirmed.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :finalized

        sig { params(finalized: T::Boolean).void }
        attr_writer :finalized

        # A wallet action step consisting of an EVM transaction.
        sig do
          params(
            caip2: String,
            status: Privy::Wallets::EvmWalletActionStepStatus::OrSymbol,
            transaction_hash: T.nilable(String),
            type:
              Privy::Wallets::EvmTransactionWalletActionStep::Type::OrSymbol,
            failure_reason: Privy::Wallets::FailureReason::OrHash,
            finalized: T::Boolean
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
          failure_reason: nil,
          # Whether this step has reached on-chain finality. Absent until finality is
          # confirmed.
          finalized: nil
        )
        end

        sig do
          override.returns(
            {
              caip2: String,
              status: Privy::Wallets::EvmWalletActionStepStatus::TaggedSymbol,
              transaction_hash: T.nilable(String),
              type:
                Privy::Wallets::EvmTransactionWalletActionStep::Type::TaggedSymbol,
              failure_reason: Privy::Wallets::FailureReason,
              finalized: T::Boolean
            }
          )
        end
        def to_hash
        end

        module Type
          extend Privy::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Privy::Wallets::EvmTransactionWalletActionStep::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EVM_TRANSACTION =
            T.let(
              :evm_transaction,
              Privy::Wallets::EvmTransactionWalletActionStep::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Privy::Wallets::EvmTransactionWalletActionStep::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
