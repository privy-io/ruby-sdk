# typed: strong

module Privy
  module Models
    class ExternalTransactionWalletActionStep < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::ExternalTransactionWalletActionStep,
            Privy::Internal::AnyHash
          )
        end

      # Status of an external transaction step in a wallet action.
      sig do
        returns(Privy::ExternalTransactionWalletActionStepStatus::TaggedSymbol)
      end
      attr_accessor :status

      sig do
        returns(Privy::ExternalTransactionWalletActionStep::Type::TaggedSymbol)
      end
      attr_accessor :type

      # A description of why a wallet action (or a step within a wallet action) failed.
      sig { returns(T.nilable(Privy::FailureReason)) }
      attr_reader :failure_reason

      sig { params(failure_reason: Privy::FailureReason::OrHash).void }
      attr_writer :failure_reason

      # A wallet action step representing a cross-chain/cross-asset fill by an external
      # provider.
      sig do
        params(
          status: Privy::ExternalTransactionWalletActionStepStatus::OrSymbol,
          type: Privy::ExternalTransactionWalletActionStep::Type::OrSymbol,
          failure_reason: Privy::FailureReason::OrHash
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
              Privy::ExternalTransactionWalletActionStepStatus::TaggedSymbol,
            type:
              Privy::ExternalTransactionWalletActionStep::Type::TaggedSymbol,
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
            T.all(Symbol, Privy::ExternalTransactionWalletActionStep::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EXTERNAL_TRANSACTION =
          T.let(
            :external_transaction,
            Privy::ExternalTransactionWalletActionStep::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::ExternalTransactionWalletActionStep::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
