# frozen_string_literal: true

module Privy
  module Models
    # A step within a wallet action, representing a single onchain action.
    module WalletActionStep
      extend Privy::Internal::Type::Union

      discriminator :type

      # A wallet action step consisting of an EVM transaction.
      variant :evm_transaction, -> { Privy::EvmTransactionWalletActionStep }

      # A wallet action step consisting of an EVM user operation.
      variant :evm_user_operation, -> { Privy::EvmUserOperationWalletActionStep }

      # A wallet action step consisting of an SVM (Solana) transaction.
      variant :svm_transaction, -> { Privy::SvmTransactionWalletActionStep }

      # A wallet action step representing a cross-chain/cross-asset fill by an external provider.
      variant :external_transaction, -> { Privy::ExternalTransactionWalletActionStep }

      # @!method self.variants
      #   @return [Array(Privy::Models::EvmTransactionWalletActionStep, Privy::Models::EvmUserOperationWalletActionStep, Privy::Models::SvmTransactionWalletActionStep, Privy::Models::ExternalTransactionWalletActionStep)]
    end
  end
end
