# frozen_string_literal: true

module Privy
  module Models
    # Type of a wallet action step.
    module WalletActionStepType
      extend Privy::Internal::Type::Enum

      EVM_TRANSACTION = :evm_transaction
      EVM_USER_OPERATION = :evm_user_operation
      SVM_TRANSACTION = :svm_transaction
      EXTERNAL_TRANSACTION = :external_transaction

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
