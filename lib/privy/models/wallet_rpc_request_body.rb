# frozen_string_literal: true

module Privy
  module Models
    # Request body for wallet RPC operations, discriminated by method.
    module WalletRpcRequestBody
      extend Privy::Internal::Type::Union

      discriminator :method

      # Executes the EVM `eth_signTransaction` RPC to sign a transaction.
      variant :eth_signTransaction, -> { Privy::EthereumSignTransactionRpcInput }

      # Executes the EVM `eth_sendTransaction` RPC to sign and broadcast a transaction.
      variant :eth_sendTransaction, -> { Privy::EthereumSendTransactionRpcInput }

      # Executes the EVM `personal_sign` RPC (EIP-191) to sign a message.
      variant :personal_sign, -> { Privy::EthereumPersonalSignRpcInput }

      # Executes the EVM `eth_signTypedData_v4` RPC (EIP-712) to sign a typed data object.
      variant :eth_signTypedData_v4, -> { Privy::EthereumSignTypedDataRpcInput }

      # Signs a raw hash on the secp256k1 curve.
      variant :secp256k1_sign, -> { Privy::EthereumSecp256k1SignRpcInput }

      # Signs an EIP-7702 authorization.
      variant :eth_sign7702Authorization, -> { Privy::EthereumSign7702AuthorizationRpcInput }

      # Executes an RPC method to hash and sign a UserOperation.
      variant :eth_signUserOperation, -> { Privy::EthereumSignUserOperationRpcInput }

      # Executes the `wallet_sendCalls` RPC (EIP-5792) to batch multiple calls into a single atomic transaction.
      variant :wallet_sendCalls, -> { Privy::EthereumSendCallsRpcInput }

      # Executes the SVM `signTransaction` RPC to sign a transaction.
      variant :signTransaction, -> { Privy::SolanaSignTransactionRpcInput }

      # Executes the SVM `signAndSendTransaction` RPC to sign and broadcast a transaction.
      variant :signAndSendTransaction, -> { Privy::SolanaSignAndSendTransactionRpcInput }

      # Executes the SVM `signMessage` RPC to sign a message.
      variant :signMessage, -> { Privy::SolanaSignMessageRpcInput }

      # Transfers satoshis to a Spark address.
      variant :transfer, -> { Privy::SparkTransferRpcInput }

      # Gets the balance of the Spark wallet.
      variant :getBalance, -> { Privy::SparkGetBalanceRpcInput }

      # Transfers tokens to a Spark address.
      variant :transferTokens, -> { Privy::SparkTransferTokensRpcInput }

      # Gets a static deposit address for the Spark wallet.
      variant :getStaticDepositAddress, -> { Privy::SparkGetStaticDepositAddressRpcInput }

      # Gets a quote for claiming a static deposit.
      variant :getClaimStaticDepositQuote, -> { Privy::SparkGetClaimStaticDepositQuoteRpcInput }

      # Claims a static deposit into the Spark wallet.
      variant :claimStaticDeposit, -> { Privy::SparkClaimStaticDepositRpcInput }

      # Creates a Lightning invoice for the Spark wallet.
      variant :createLightningInvoice, -> { Privy::SparkCreateLightningInvoiceRpcInput }

      # Pays a Lightning invoice from the Spark wallet.
      variant :payLightningInvoice, -> { Privy::SparkPayLightningInvoiceRpcInput }

      # Signs a message with the Spark identity key.
      variant :signMessageWithIdentityKey, -> { Privy::SparkSignMessageWithIdentityKeyRpcInput }

      # Executes the Tron `tron_signTransaction` RPC to sign a transaction. The caller is responsible for broadcasting.
      variant :tron_signTransaction, -> { Privy::TronSignTransactionRpcInput }

      # Executes the Tron `tron_sendTransaction` RPC to sign and broadcast a transaction.
      variant :tron_sendTransaction, -> { Privy::TronSendTransactionRpcInput }

      # Exports the private key of the wallet.
      variant :exportPrivateKey, -> { Privy::ExportPrivateKeyRpcInput }

      # Exports the seed phrase of the wallet.
      variant :exportSeedPhrase, -> { Privy::ExportSeedPhraseRpcInput }

      # @!method self.variants
      #   @return [Array(Privy::Models::EthereumSignTransactionRpcInput, Privy::Models::EthereumSendTransactionRpcInput, Privy::Models::EthereumPersonalSignRpcInput, Privy::Models::EthereumSignTypedDataRpcInput, Privy::Models::EthereumSecp256k1SignRpcInput, Privy::Models::EthereumSign7702AuthorizationRpcInput, Privy::Models::EthereumSignUserOperationRpcInput, Privy::Models::EthereumSendCallsRpcInput, Privy::Models::SolanaSignTransactionRpcInput, Privy::Models::SolanaSignAndSendTransactionRpcInput, Privy::Models::SolanaSignMessageRpcInput, Privy::Models::SparkTransferRpcInput, Privy::Models::SparkGetBalanceRpcInput, Privy::Models::SparkTransferTokensRpcInput, Privy::Models::SparkGetStaticDepositAddressRpcInput, Privy::Models::SparkGetClaimStaticDepositQuoteRpcInput, Privy::Models::SparkClaimStaticDepositRpcInput, Privy::Models::SparkCreateLightningInvoiceRpcInput, Privy::Models::SparkPayLightningInvoiceRpcInput, Privy::Models::SparkSignMessageWithIdentityKeyRpcInput, Privy::Models::TronSignTransactionRpcInput, Privy::Models::TronSendTransactionRpcInput, Privy::Models::ExportPrivateKeyRpcInput, Privy::Models::ExportSeedPhraseRpcInput)]
    end
  end
end
