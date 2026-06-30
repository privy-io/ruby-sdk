# typed: strong

module Privy
  module Models
    # Request body for wallet RPC operations, discriminated by method.
    module WalletRpcRequestBody
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::EthereumSignTransactionRpcInput,
            Privy::EthereumSendTransactionRpcInput,
            Privy::EthereumPersonalSignRpcInput,
            Privy::EthereumSignTypedDataRpcInput,
            Privy::EthereumSecp256k1SignRpcInput,
            Privy::EthereumSign7702AuthorizationRpcInput,
            Privy::EthereumSignUserOperationRpcInput,
            Privy::EthereumSendCallsRpcInput,
            Privy::SolanaSignTransactionRpcInput,
            Privy::SolanaSignAndSendTransactionRpcInput,
            Privy::SolanaSignMessageRpcInput,
            Privy::SparkTransferRpcInput,
            Privy::SparkGetBalanceRpcInput,
            Privy::SparkTransferTokensRpcInput,
            Privy::SparkGetStaticDepositAddressRpcInput,
            Privy::SparkGetClaimStaticDepositQuoteRpcInput,
            Privy::SparkClaimStaticDepositRpcInput,
            Privy::SparkCreateLightningInvoiceRpcInput,
            Privy::SparkPayLightningInvoiceRpcInput,
            Privy::SparkSignMessageWithIdentityKeyRpcInput,
            Privy::TronSignTransactionRpcInput,
            Privy::TronSendTransactionRpcInput,
            Privy::ExportPrivateKeyRpcInput,
            Privy::ExportSeedPhraseRpcInput
          )
        end

      sig { override.returns(T::Array[Privy::WalletRpcRequestBody::Variants]) }
      def self.variants
      end
    end
  end
end
