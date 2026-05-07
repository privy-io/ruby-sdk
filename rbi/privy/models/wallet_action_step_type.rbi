# typed: strong

module Privy
  module Models
    # Type of a wallet action step.
    module WalletActionStepType
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::WalletActionStepType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      EVM_TRANSACTION =
        T.let(:evm_transaction, Privy::WalletActionStepType::TaggedSymbol)
      EVM_USER_OPERATION =
        T.let(:evm_user_operation, Privy::WalletActionStepType::TaggedSymbol)
      SVM_TRANSACTION =
        T.let(:svm_transaction, Privy::WalletActionStepType::TaggedSymbol)
      EXTERNAL_TRANSACTION =
        T.let(:external_transaction, Privy::WalletActionStepType::TaggedSymbol)

      sig do
        override.returns(T::Array[Privy::WalletActionStepType::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
