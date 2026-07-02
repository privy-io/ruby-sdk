# frozen_string_literal: true

module Privy
  module Models
    # Response body for Spark wallet RPC operations, discriminated by method.
    module SparkRpcResponse
      extend Privy::Internal::Type::Union

      discriminator :method

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

      # Response to the Spark `withdraw` RPC.
      variant :withdraw, -> { Privy::SparkWithdrawRpcResponse }

      # Response to the Spark `getWithdrawalFeeQuote` RPC.
      variant :getWithdrawalFeeQuote, -> { Privy::SparkGetWithdrawalFeeQuoteRpcResponse }

      # @!method self.variants
      #   @return [Array(Privy::Models::SparkTransferRpcResponse, Privy::Models::SparkGetBalanceRpcResponse, Privy::Models::SparkTransferTokensRpcResponse, Privy::Models::SparkGetStaticDepositAddressRpcResponse, Privy::Models::SparkGetClaimStaticDepositQuoteRpcResponse, Privy::Models::SparkClaimStaticDepositRpcResponse, Privy::Models::SparkCreateLightningInvoiceRpcResponse, Privy::Models::SparkPayLightningInvoiceRpcResponse, Privy::Models::SparkSignMessageWithIdentityKeyRpcResponse, Privy::Models::SparkWithdrawRpcResponse, Privy::Models::SparkGetWithdrawalFeeQuoteRpcResponse)]
    end
  end
end
