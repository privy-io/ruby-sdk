# typed: strong

module Privy
  module Models
    WalletActionStep = Wallets::WalletActionStep

    module Wallets
      # A step within a wallet action, representing a single onchain action.
      module WalletActionStep
        extend Privy::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Privy::Wallets::EvmTransactionWalletActionStep,
              Privy::Wallets::EvmUserOperationWalletActionStep,
              Privy::Wallets::SvmTransactionWalletActionStep,
              Privy::Wallets::TvmTransactionWalletActionStep,
              Privy::Wallets::ExternalTransactionWalletActionStep,
              Privy::Wallets::CustodianTransactionWalletActionStep
            )
          end

        sig do
          override.returns(T::Array[Privy::Wallets::WalletActionStep::Variants])
        end
        def self.variants
        end
      end
    end
  end
end
