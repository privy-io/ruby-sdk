# typed: strong

module Privy
  module Models
    WalletActionStepType = Wallets::WalletActionStepType

    module Wallets
      # Type of a wallet action step.
      module WalletActionStepType
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::Wallets::WalletActionStepType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EVM_TRANSACTION =
          T.let(
            :evm_transaction,
            Privy::Wallets::WalletActionStepType::TaggedSymbol
          )
        EVM_USER_OPERATION =
          T.let(
            :evm_user_operation,
            Privy::Wallets::WalletActionStepType::TaggedSymbol
          )
        SVM_TRANSACTION =
          T.let(
            :svm_transaction,
            Privy::Wallets::WalletActionStepType::TaggedSymbol
          )
        TVM_TRANSACTION =
          T.let(
            :tvm_transaction,
            Privy::Wallets::WalletActionStepType::TaggedSymbol
          )
        EXTERNAL_TRANSACTION =
          T.let(
            :external_transaction,
            Privy::Wallets::WalletActionStepType::TaggedSymbol
          )
        CUSTODIAN_TRANSACTION =
          T.let(
            :custodian_transaction,
            Privy::Wallets::WalletActionStepType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::Wallets::WalletActionStepType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
