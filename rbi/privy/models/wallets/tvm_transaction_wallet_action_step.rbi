# typed: strong

module Privy
  module Models
    module Wallets
      class TvmTransactionWalletActionStep < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::Wallets::TvmTransactionWalletActionStep,
              Privy::Internal::AnyHash
            )
          end

        # CAIP-2 chain identifier for the Tron network.
        sig { returns(String) }
        attr_accessor :caip2

        # Status of a TVM (Tron) step in a wallet action.
        sig { returns(Privy::Wallets::TvmWalletActionStepStatus::TaggedSymbol) }
        attr_accessor :status

        # The Tron transaction ID. Null until broadcast.
        sig { returns(T.nilable(String)) }
        attr_accessor :transaction_id

        sig do
          returns(
            Privy::Wallets::TvmTransactionWalletActionStep::Type::TaggedSymbol
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

        # A wallet action step consisting of a TVM (Tron) transaction.
        sig do
          params(
            caip2: String,
            status: Privy::Wallets::TvmWalletActionStepStatus::OrSymbol,
            transaction_id: T.nilable(String),
            type:
              Privy::Wallets::TvmTransactionWalletActionStep::Type::OrSymbol,
            failure_reason: Privy::Wallets::FailureReason::OrHash
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
              status: Privy::Wallets::TvmWalletActionStepStatus::TaggedSymbol,
              transaction_id: T.nilable(String),
              type:
                Privy::Wallets::TvmTransactionWalletActionStep::Type::TaggedSymbol,
              failure_reason: Privy::Wallets::FailureReason
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
                Privy::Wallets::TvmTransactionWalletActionStep::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TVM_TRANSACTION =
            T.let(
              :tvm_transaction,
              Privy::Wallets::TvmTransactionWalletActionStep::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Privy::Wallets::TvmTransactionWalletActionStep::Type::TaggedSymbol
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
