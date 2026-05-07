# frozen_string_literal: true

module Privy
  module Models
    # Request body for Spark wallet RPC operations, discriminated by method.
    module SparkRpcInput
      extend Privy::Internal::Type::Union

      discriminator :method

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

      # @!method self.variants
      #   @return [Array(Privy::Models::SparkTransferRpcInput, Privy::Models::SparkGetBalanceRpcInput, Privy::Models::SparkTransferTokensRpcInput, Privy::Models::SparkGetStaticDepositAddressRpcInput, Privy::Models::SparkGetClaimStaticDepositQuoteRpcInput, Privy::Models::SparkClaimStaticDepositRpcInput, Privy::Models::SparkCreateLightningInvoiceRpcInput, Privy::Models::SparkPayLightningInvoiceRpcInput, Privy::Models::SparkSignMessageWithIdentityKeyRpcInput)]
    end
  end
end
