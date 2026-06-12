# typed: strong

module Privy
  module Models
    class CustodianTransactionWalletActionStep < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::CustodianTransactionWalletActionStep,
            Privy::Internal::AnyHash
          )
        end

      # Identifier of the custodian executing this transaction (e.g. "bridge").
      sig { returns(String) }
      attr_accessor :custodian

      # Status of a custodian transaction step in a wallet action.
      sig do
        returns(Privy::CustodianTransactionWalletActionStepStatus::TaggedSymbol)
      end
      attr_accessor :status

      sig do
        returns(Privy::CustodianTransactionWalletActionStep::Type::TaggedSymbol)
      end
      attr_accessor :type

      # A description of why a wallet action (or a step within a wallet action) failed.
      sig { returns(T.nilable(Privy::FailureReason)) }
      attr_reader :failure_reason

      sig { params(failure_reason: Privy::FailureReason::OrHash).void }
      attr_writer :failure_reason

      # A wallet action step representing a transaction executed by a custodian (e.g.
      # Bridge).
      sig do
        params(
          custodian: String,
          status: Privy::CustodianTransactionWalletActionStepStatus::OrSymbol,
          type: Privy::CustodianTransactionWalletActionStep::Type::OrSymbol,
          failure_reason: Privy::FailureReason::OrHash
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
              Privy::CustodianTransactionWalletActionStepStatus::TaggedSymbol,
            type:
              Privy::CustodianTransactionWalletActionStep::Type::TaggedSymbol,
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
            T.all(Symbol, Privy::CustodianTransactionWalletActionStep::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CUSTODIAN_TRANSACTION =
          T.let(
            :custodian_transaction,
            Privy::CustodianTransactionWalletActionStep::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::CustodianTransactionWalletActionStep::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
