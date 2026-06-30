# frozen_string_literal: true

module Privy
  module Models
    # Response body for wallet RPC operations, discriminated by method.
    #
    # @see Privy::Resources::Wallets#rpc
    module WalletRpcResponse
      extend Privy::Internal::Type::Union

      discriminator :method

      # Response to the EVM `personal_sign` RPC.
      variant :personal_sign, -> { Privy::EthereumPersonalSignRpcResponse }

      # Response to the EVM `eth_signTypedData_v4` RPC.
      variant :eth_signTypedData_v4, -> { Privy::EthereumSignTypedDataRpcResponse }

      # Response to the EVM `eth_signTransaction` RPC.
      variant :eth_signTransaction, -> { Privy::EthereumSignTransactionRpcResponse }

      # Response to the EVM `eth_sendTransaction` RPC.
      variant :eth_sendTransaction, -> { Privy::EthereumSendTransactionRpcResponse }

      # Response to the EVM `eth_signUserOperation` RPC.
      variant :eth_signUserOperation, -> { Privy::EthereumSignUserOperationRpcResponse }

      # Response to the EVM `eth_sign7702Authorization` RPC.
      variant :eth_sign7702Authorization, -> { Privy::EthereumSign7702AuthorizationRpcResponse }

      # Response to the EVM `secp256k1_sign` RPC.
      variant :secp256k1_sign, -> { Privy::EthereumSecp256k1SignRpcResponse }

      # Response to the `wallet_sendCalls` RPC.
      variant :wallet_sendCalls, -> { Privy::EthereumSendCallsRpcResponse }

      # Response to the SVM `signMessage` RPC.
      variant :signMessage, -> { Privy::SolanaSignMessageRpcResponse }

      # Response to the SVM `signTransaction` RPC.
      variant :signTransaction, -> { Privy::SolanaSignTransactionRpcResponse }

      # Response to the SVM `signAndSendTransaction` RPC.
      variant :signAndSendTransaction, -> { Privy::SolanaSignAndSendTransactionRpcResponse }

      # Response to the Spark `transfer` RPC.
      variant :transfer, -> { Privy::SparkTransferRpcResponse }

      # Response to the Spark `getBalance` RPC.
      variant :getBalance, -> { Privy::SparkGetBalanceRpcResponse }

      # Response to the Spark `transferTokens` RPC.
      variant :transferTokens, -> { Privy::SparkTransferTokensRpcResponse }

      # Response to the Spark `getStaticDepositAddress` RPC.
      variant :getStaticDepositAddress, -> { Privy::SparkGetStaticDepositAddressRpcResponse }

      # Response to the Spark `getClaimStaticDepositQuote` RPC.
      variant :getClaimStaticDepositQuote, -> { Privy::SparkGetClaimStaticDepositQuoteRpcResponse }

      # Response to the Spark `claimStaticDeposit` RPC.
      variant :claimStaticDeposit, -> { Privy::SparkClaimStaticDepositRpcResponse }

      # Response to the Spark `createLightningInvoice` RPC.
      variant :createLightningInvoice, -> { Privy::SparkCreateLightningInvoiceRpcResponse }

      # Response to the Spark `payLightningInvoice` RPC.
      variant :payLightningInvoice, -> { Privy::SparkPayLightningInvoiceRpcResponse }

      # Response to the Spark `signMessageWithIdentityKey` RPC.
      variant :signMessageWithIdentityKey, -> { Privy::SparkSignMessageWithIdentityKeyRpcResponse }

      # Response to the Tron `tron_signTransaction` RPC.
      variant :tron_signTransaction, -> { Privy::TronSignTransactionRpcResponse }

      # Response to the Tron `tron_sendTransaction` RPC.
      variant :tron_sendTransaction, -> { Privy::TronSendTransactionRpcResponse }

      # Response to the `exportPrivateKey` RPC.
      variant :exportPrivateKey, -> { Privy::ExportPrivateKeyRpcResponse }

      # Response to the `exportSeedPhrase` RPC.
      variant :exportSeedPhrase, -> { Privy::ExportSeedPhraseRpcResponse }

      # @!method self.variants
      #   @return [Array(Privy::Models::EthereumPersonalSignRpcResponse, Privy::Models::EthereumSignTypedDataRpcResponse, Privy::Models::EthereumSignTransactionRpcResponse, Privy::Models::EthereumSendTransactionRpcResponse, Privy::Models::EthereumSignUserOperationRpcResponse, Privy::Models::EthereumSign7702AuthorizationRpcResponse, Privy::Models::EthereumSecp256k1SignRpcResponse, Privy::Models::EthereumSendCallsRpcResponse, Privy::Models::SolanaSignMessageRpcResponse, Privy::Models::SolanaSignTransactionRpcResponse, Privy::Models::SolanaSignAndSendTransactionRpcResponse, Privy::Models::SparkTransferRpcResponse, Privy::Models::SparkGetBalanceRpcResponse, Privy::Models::SparkTransferTokensRpcResponse, Privy::Models::SparkGetStaticDepositAddressRpcResponse, Privy::Models::SparkGetClaimStaticDepositQuoteRpcResponse, Privy::Models::SparkClaimStaticDepositRpcResponse, Privy::Models::SparkCreateLightningInvoiceRpcResponse, Privy::Models::SparkPayLightningInvoiceRpcResponse, Privy::Models::SparkSignMessageWithIdentityKeyRpcResponse, Privy::Models::TronSignTransactionRpcResponse, Privy::Models::TronSendTransactionRpcResponse, Privy::Models::ExportPrivateKeyRpcResponse, Privy::Models::ExportSeedPhraseRpcResponse)]
    end
  end
end
