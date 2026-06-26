# typed: strong

module Privy
  module Models
    module Wallets
      class ExternalTransactionWalletActionStep < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::Wallets::ExternalTransactionWalletActionStep,
              Privy::Internal::AnyHash
            )
          end

        # Status of an external transaction step in a wallet action.
        sig do
          returns(
            Privy::Wallets::ExternalTransactionWalletActionStepStatus::TaggedSymbol
          )
        end
        attr_accessor :status

        sig do
          returns(
            Privy::Wallets::ExternalTransactionWalletActionStep::Type::TaggedSymbol
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

        # A wallet action step representing a cross-chain/cross-asset fill by an external
        # provider.
        sig do
          params(
            status:
              Privy::Wallets::ExternalTransactionWalletActionStepStatus::OrSymbol,
            type:
              Privy::Wallets::ExternalTransactionWalletActionStep::Type::OrSymbol,
            failure_reason: Privy::Wallets::FailureReason::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Status of an external transaction step in a wallet action.
          status:,
          type:,
          # A description of why a wallet action (or a step within a wallet action) failed.
          failure_reason: nil
        )
        end

        sig do
          override.returns(
            {
              status:
                Privy::Wallets::ExternalTransactionWalletActionStepStatus::TaggedSymbol,
              type:
                Privy::Wallets::ExternalTransactionWalletActionStep::Type::TaggedSymbol,
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
                Privy::Wallets::ExternalTransactionWalletActionStep::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EXTERNAL_TRANSACTION =
            T.let(
              :external_transaction,
              Privy::Wallets::ExternalTransactionWalletActionStep::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Privy::Wallets::ExternalTransactionWalletActionStep::Type::TaggedSymbol
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
