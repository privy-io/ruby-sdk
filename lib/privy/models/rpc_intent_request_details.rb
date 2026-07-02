# frozen_string_literal: true

module Privy
  module Models
    class RpcIntentRequestDetails < Privy::Internal::Type::BaseModel
      # @!attribute body
      #   Request body for wallet RPC operations, discriminated by method.
      #
      #   @return [Privy::Models::EthereumSignTransactionRpcInput, Privy::Models::EthereumSendTransactionRpcInput, Privy::Models::EthereumPersonalSignRpcInput, Privy::Models::EthereumSignTypedDataRpcInput, Privy::Models::EthereumSecp256k1SignRpcInput, Privy::Models::EthereumSign7702AuthorizationRpcInput, Privy::Models::EthereumSignUserOperationRpcInput, Privy::Models::EthereumSendCallsRpcInput, Privy::Models::SolanaSignTransactionRpcInput, Privy::Models::SolanaSignAndSendTransactionRpcInput, Privy::Models::SolanaSignMessageRpcInput, Privy::Models::SparkTransferRpcInput, Privy::Models::SparkGetBalanceRpcInput, Privy::Models::SparkTransferTokensRpcInput, Privy::Models::SparkGetStaticDepositAddressRpcInput, Privy::Models::SparkGetClaimStaticDepositQuoteRpcInput, Privy::Models::SparkClaimStaticDepositRpcInput, Privy::Models::SparkCreateLightningInvoiceRpcInput, Privy::Models::SparkPayLightningInvoiceRpcInput, Privy::Models::SparkSignMessageWithIdentityKeyRpcInput, Privy::Models::SparkWithdrawRpcInput, Privy::Models::SparkGetWithdrawalFeeQuoteRpcInput, Privy::Models::TronSignTransactionRpcInput, Privy::Models::TronSendTransactionRpcInput, Privy::Models::ExportPrivateKeyRpcInput, Privy::Models::ExportSeedPhraseRpcInput]
      required :body, union: -> { Privy::WalletRpcRequestBody }

      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::RpcIntentRequestDetails::Method]
      required :method_, enum: -> { Privy::RpcIntentRequestDetails::Method }, api_name: :method

      # @!attribute url
      #
      #   @return [String]
      required :url, String

      # @!method initialize(body:, method_:, url:)
      #   Request details for an RPC intent.
      #
      #   @param body [Privy::Models::EthereumSignTransactionRpcInput, Privy::Models::EthereumSendTransactionRpcInput, Privy::Models::EthereumPersonalSignRpcInput, Privy::Models::EthereumSignTypedDataRpcInput, Privy::Models::EthereumSecp256k1SignRpcInput, Privy::Models::EthereumSign7702AuthorizationRpcInput, Privy::Models::EthereumSignUserOperationRpcInput, Privy::Models::EthereumSendCallsRpcInput, Privy::Models::SolanaSignTransactionRpcInput, Privy::Models::SolanaSignAndSendTransactionRpcInput, Privy::Models::SolanaSignMessageRpcInput, Privy::Models::SparkTransferRpcInput, Privy::Models::SparkGetBalanceRpcInput, Privy::Models::SparkTransferTokensRpcInput, Privy::Models::SparkGetStaticDepositAddressRpcInput, Privy::Models::SparkGetClaimStaticDepositQuoteRpcInput, Privy::Models::SparkClaimStaticDepositRpcInput, Privy::Models::SparkCreateLightningInvoiceRpcInput, Privy::Models::SparkPayLightningInvoiceRpcInput, Privy::Models::SparkSignMessageWithIdentityKeyRpcInput, Privy::Models::SparkWithdrawRpcInput, Privy::Models::SparkGetWithdrawalFeeQuoteRpcInput, Privy::Models::TronSignTransactionRpcInput, Privy::Models::TronSendTransactionRpcInput, Privy::Models::ExportPrivateKeyRpcInput, Privy::Models::ExportSeedPhraseRpcInput] Request body for wallet RPC operations, discriminated by method.
      #
      #   @param method_ [Symbol, Privy::Models::RpcIntentRequestDetails::Method]
      #
      #   @param url [String]

      # @see Privy::Models::RpcIntentRequestDetails#method_
      module Method
        extend Privy::Internal::Type::Enum

        POST = :POST

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
