# typed: strong

module Privy
  module Models
    module Wallets
      class CustodianTransactionWalletActionStep < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::Wallets::CustodianTransactionWalletActionStep,
              Privy::Internal::AnyHash
            )
          end

        # Identifier of the custodian executing this transaction (e.g. "bridge").
        sig { returns(String) }
        attr_accessor :custodian

        # Status of a custodian transaction step in a wallet action.
        sig do
          returns(
            Privy::Wallets::CustodianTransactionWalletActionStepStatus::TaggedSymbol
          )
        end
        attr_accessor :status

        sig do
          returns(
            Privy::Wallets::CustodianTransactionWalletActionStep::Type::TaggedSymbol
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

        # A wallet action step representing a transaction executed by a custodian (e.g.
        # Bridge).
        sig do
          params(
            custodian: String,
            status:
              Privy::Wallets::CustodianTransactionWalletActionStepStatus::OrSymbol,
            type:
              Privy::Wallets::CustodianTransactionWalletActionStep::Type::OrSymbol,
            failure_reason: Privy::Wallets::FailureReason::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifier of the custodian executing this transaction (e.g. "bridge").
          custodian:,
          # Status of a custodian transaction step in a wallet action.
          status:,
          type:,
          # A description of why a wallet action (or a step within a wallet action) failed.
          failure_reason: nil
        )
        end

        sig do
          override.returns(
            {
              custodian: String,
              status:
                Privy::Wallets::CustodianTransactionWalletActionStepStatus::TaggedSymbol,
              type:
                Privy::Wallets::CustodianTransactionWalletActionStep::Type::TaggedSymbol,
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
                Privy::Wallets::CustodianTransactionWalletActionStep::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CUSTODIAN_TRANSACTION =
            T.let(
              :custodian_transaction,
              Privy::Wallets::CustodianTransactionWalletActionStep::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Privy::Wallets::CustodianTransactionWalletActionStep::Type::TaggedSymbol
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
