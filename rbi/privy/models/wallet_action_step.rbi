# typed: strong

module Privy
  module Models
    # A step within a wallet action, representing a single onchain action.
    module WalletActionStep
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::EvmTransactionWalletActionStep,
            Privy::EvmUserOperationWalletActionStep,
            Privy::SvmTransactionWalletActionStep,
            Privy::ExternalTransactionWalletActionStep,
            Privy::CustodianTransactionWalletActionStep
          )
        end

      sig { override.returns(T::Array[Privy::WalletActionStep::Variants]) }
      def self.variants
      end
    end
  end
end
