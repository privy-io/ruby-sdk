# typed: strong

module Privy
  module Models
    # Response body for wallet RPC operations, discriminated by method.
    module WalletRpcResponse
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::EthereumPersonalSignRpcResponse,
            Privy::EthereumSignTypedDataRpcResponse,
            Privy::EthereumSignTransactionRpcResponse,
            Privy::EthereumSendTransactionRpcResponse,
            Privy::EthereumSignUserOperationRpcResponse,
            Privy::EthereumSign7702AuthorizationRpcResponse,
            Privy::EthereumSecp256k1SignRpcResponse,
            Privy::EthereumSendCallsRpcResponse,
            Privy::SolanaSignMessageRpcResponse,
            Privy::SolanaSignTransactionRpcResponse,
            Privy::SolanaSignAndSendTransactionRpcResponse,
            Privy::SparkTransferRpcResponse,
            Privy::SparkGetBalanceRpcResponse,
            Privy::SparkTransferTokensRpcResponse,
            Privy::SparkGetStaticDepositAddressRpcResponse,
            Privy::SparkGetClaimStaticDepositQuoteRpcResponse,
            Privy::SparkClaimStaticDepositRpcResponse,
            Privy::SparkCreateLightningInvoiceRpcResponse,
            Privy::SparkPayLightningInvoiceRpcResponse,
            Privy::SparkSignMessageWithIdentityKeyRpcResponse,
            Privy::SparkWithdrawRpcResponse,
            Privy::SparkGetWithdrawalFeeQuoteRpcResponse,
            Privy::TronSignTransactionRpcResponse,
            Privy::TronSendTransactionRpcResponse,
            Privy::ExportPrivateKeyRpcResponse,
            Privy::ExportSeedPhraseRpcResponse
          )
        end

      sig { override.returns(T::Array[Privy::WalletRpcResponse::Variants]) }
      def self.variants
      end
    end
  end
end
