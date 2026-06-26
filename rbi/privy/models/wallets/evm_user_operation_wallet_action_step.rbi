# typed: strong

module Privy
  module Models
    module Wallets
      class EvmUserOperationWalletActionStep < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::Wallets::EvmUserOperationWalletActionStep,
              Privy::Internal::AnyHash
            )
          end

        # Transaction hash of the bundle in which this user operation was included. Null
        # until included by a bundler.
        sig { returns(T.nilable(String)) }
        attr_accessor :bundle_transaction_hash

        # CAIP-2 network identifier, containing the chain ID of the user operation.
        sig { returns(String) }
        attr_accessor :caip2

        # The ERC-4337 entrypoint contract version used by the user operation.
        sig do
          returns(
            Privy::Wallets::EvmUserOperationEntrypointVersion::TaggedSymbol
          )
        end
        attr_accessor :entrypoint_version

        # Status of an EVM step in a wallet action.
        sig { returns(Privy::Wallets::EvmWalletActionStepStatus::TaggedSymbol) }
        attr_accessor :status

        sig do
          returns(
            Privy::Wallets::EvmUserOperationWalletActionStep::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        # The user operation hash for this step. May change while the step status is
        # non-terminal.
        sig { returns(T.nilable(String)) }
        attr_accessor :user_operation_hash

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

        # Amount charged in USD for gas sponsorship on this step.
        sig { returns(T.nilable(String)) }
        attr_reader :gas_credits_charged_usd

        sig { params(gas_credits_charged_usd: String).void }
        attr_writer :gas_credits_charged_usd

        # A wallet action step consisting of an EVM user operation.
        sig do
          params(
            bundle_transaction_hash: T.nilable(String),
            caip2: String,
            entrypoint_version:
              Privy::Wallets::EvmUserOperationEntrypointVersion::OrSymbol,
            status: Privy::Wallets::EvmWalletActionStepStatus::OrSymbol,
            type:
              Privy::Wallets::EvmUserOperationWalletActionStep::Type::OrSymbol,
            user_operation_hash: T.nilable(String),
            failure_reason: Privy::Wallets::FailureReason::OrHash,
            finalized: T::Boolean,
            gas_credits_charged_usd: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Transaction hash of the bundle in which this user operation was included. Null
          # until included by a bundler.
          bundle_transaction_hash:,
          # CAIP-2 network identifier, containing the chain ID of the user operation.
          caip2:,
          # The ERC-4337 entrypoint contract version used by the user operation.
          entrypoint_version:,
          # Status of an EVM step in a wallet action.
          status:,
          type:,
          # The user operation hash for this step. May change while the step status is
          # non-terminal.
          user_operation_hash:,
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
              bundle_transaction_hash: T.nilable(String),
              caip2: String,
              entrypoint_version:
                Privy::Wallets::EvmUserOperationEntrypointVersion::TaggedSymbol,
              status: Privy::Wallets::EvmWalletActionStepStatus::TaggedSymbol,
              type:
                Privy::Wallets::EvmUserOperationWalletActionStep::Type::TaggedSymbol,
              user_operation_hash: T.nilable(String),
              failure_reason: Privy::Wallets::FailureReason,
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
              T.all(
                Symbol,
                Privy::Wallets::EvmUserOperationWalletActionStep::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EVM_USER_OPERATION =
            T.let(
              :evm_user_operation,
              Privy::Wallets::EvmUserOperationWalletActionStep::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Privy::Wallets::EvmUserOperationWalletActionStep::Type::TaggedSymbol
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
