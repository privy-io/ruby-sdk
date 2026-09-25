# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      # A step within a wallet action, representing a single onchain action.
      module WalletActionStep
        extend Privy::Internal::Type::Union

        discriminator :type

        # A wallet action step consisting of an EVM transaction.
        variant :evm_transaction, -> { Privy::Wallets::EvmTransactionWalletActionStep }

        # A wallet action step consisting of an EVM user operation.
        variant :evm_user_operation, -> { Privy::Wallets::EvmUserOperationWalletActionStep }

        # A wallet action step consisting of an SVM (Solana) transaction.
        variant :svm_transaction, -> { Privy::Wallets::SvmTransactionWalletActionStep }

        # A wallet action step consisting of a TVM (Tron) transaction.
        variant :tvm_transaction, -> { Privy::Wallets::TvmTransactionWalletActionStep }

        # A wallet action step representing a cross-chain/cross-asset fill by an external provider.
        variant :external_transaction, -> { Privy::Wallets::ExternalTransactionWalletActionStep }

        # A wallet action step representing a transaction executed by a custodian (e.g. Bridge).
        variant :custodian_transaction, -> { Privy::Wallets::CustodianTransactionWalletActionStep }

        # A wallet action step representing a Tempo Zone settlement on its parent chain.
        variant :tempo_zone_settlement, -> { Privy::Wallets::TempoZoneSettlementWalletActionStep }

        # @!method self.variants
        #   @return [Array(Privy::Models::Wallets::EvmTransactionWalletActionStep, Privy::Models::Wallets::EvmUserOperationWalletActionStep, Privy::Models::Wallets::SvmTransactionWalletActionStep, Privy::Models::Wallets::TvmTransactionWalletActionStep, Privy::Models::Wallets::ExternalTransactionWalletActionStep, Privy::Models::Wallets::CustodianTransactionWalletActionStep, Privy::Models::Wallets::TempoZoneSettlementWalletActionStep)]
      end
    end

    WalletActionStep = Wallets::WalletActionStep
  end
end
