# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Intents#rpc
    class RpcIntentResponse < Privy::Models::BaseIntentResponse
      # @!attribute intent_type
      #
      #   @return [Symbol, Privy::Models::RpcIntentResponse::IntentType]
      required :intent_type, enum: -> { Privy::RpcIntentResponse::IntentType }

      # @!attribute request_details
      #   The original RPC request that would be sent to the wallet endpoint
      #
      #   @return [Privy::Models::RpcIntentResponse::RequestDetails]
      required :request_details, -> { Privy::RpcIntentResponse::RequestDetails }

      # @!attribute action_result
      #   Result of RPC execution (only present if status is 'executed' or 'failed')
      #
      #   @return [Privy::Models::BaseActionResult, nil]
      optional :action_result, -> { Privy::BaseActionResult }

      # @!attribute current_resource_data
      #   A wallet managed by Privy's wallet infrastructure.
      #
      #   @return [Privy::Models::Wallet, nil]
      optional :current_resource_data, -> { Privy::Wallet }

      # @!method initialize(intent_type:, request_details:, action_result: nil, current_resource_data: nil)
      #   Response for an RPC intent
      #
      #   @param intent_type [Symbol, Privy::Models::RpcIntentResponse::IntentType]
      #
      #   @param request_details [Privy::Models::RpcIntentResponse::RequestDetails] The original RPC request that would be sent to the wallet endpoint
      #
      #   @param action_result [Privy::Models::BaseActionResult] Result of RPC execution (only present if status is 'executed' or 'failed')
      #
      #   @param current_resource_data [Privy::Models::Wallet] A wallet managed by Privy's wallet infrastructure.

      module IntentType
        extend Privy::Internal::Type::Enum

        RPC = :RPC

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class RequestDetails < Privy::Internal::Type::BaseModel
        # @!attribute body
        #   Request body for wallet RPC operations, discriminated by method.
        #
        #   @return [Privy::Models::EthereumSignTransactionRpcInput, Privy::Models::EthereumSendTransactionRpcInput, Privy::Models::EthereumPersonalSignRpcInput, Privy::Models::EthereumSignTypedDataRpcInput, Privy::Models::EthereumSecp256k1SignRpcInput, Privy::Models::EthereumSign7702AuthorizationRpcInput, Privy::Models::EthereumSignUserOperationRpcInput, Privy::Models::EthereumSendCallsRpcInput, Privy::Models::SolanaSignTransactionRpcInput, Privy::Models::SolanaSignAndSendTransactionRpcInput, Privy::Models::SolanaSignMessageRpcInput, Privy::Models::SparkTransferRpcInput, Privy::Models::SparkGetBalanceRpcInput, Privy::Models::SparkTransferTokensRpcInput, Privy::Models::SparkGetStaticDepositAddressRpcInput, Privy::Models::SparkGetClaimStaticDepositQuoteRpcInput, Privy::Models::SparkClaimStaticDepositRpcInput, Privy::Models::SparkCreateLightningInvoiceRpcInput, Privy::Models::SparkPayLightningInvoiceRpcInput, Privy::Models::SparkSignMessageWithIdentityKeyRpcInput, Privy::Models::ExportPrivateKeyRpcInput, Privy::Models::ExportSeedPhraseRpcInput]
        required :body, union: -> { Privy::WalletRpcRequestBody }

        # @!attribute method_
        #
        #   @return [Symbol, Privy::Models::RpcIntentResponse::RequestDetails::Method]
        required :method_, enum: -> { Privy::RpcIntentResponse::RequestDetails::Method }, api_name: :method

        # @!attribute url
        #
        #   @return [String]
        required :url, String

        # @!method initialize(body:, method_:, url:)
        #   The original RPC request that would be sent to the wallet endpoint
        #
        #   @param body [Privy::Models::EthereumSignTransactionRpcInput, Privy::Models::EthereumSendTransactionRpcInput, Privy::Models::EthereumPersonalSignRpcInput, Privy::Models::EthereumSignTypedDataRpcInput, Privy::Models::EthereumSecp256k1SignRpcInput, Privy::Models::EthereumSign7702AuthorizationRpcInput, Privy::Models::EthereumSignUserOperationRpcInput, Privy::Models::EthereumSendCallsRpcInput, Privy::Models::SolanaSignTransactionRpcInput, Privy::Models::SolanaSignAndSendTransactionRpcInput, Privy::Models::SolanaSignMessageRpcInput, Privy::Models::SparkTransferRpcInput, Privy::Models::SparkGetBalanceRpcInput, Privy::Models::SparkTransferTokensRpcInput, Privy::Models::SparkGetStaticDepositAddressRpcInput, Privy::Models::SparkGetClaimStaticDepositQuoteRpcInput, Privy::Models::SparkClaimStaticDepositRpcInput, Privy::Models::SparkCreateLightningInvoiceRpcInput, Privy::Models::SparkPayLightningInvoiceRpcInput, Privy::Models::SparkSignMessageWithIdentityKeyRpcInput, Privy::Models::ExportPrivateKeyRpcInput, Privy::Models::ExportSeedPhraseRpcInput] Request body for wallet RPC operations, discriminated by method.
        #
        #   @param method_ [Symbol, Privy::Models::RpcIntentResponse::RequestDetails::Method]
        #
        #   @param url [String]

        # @see Privy::Models::RpcIntentResponse::RequestDetails#method_
        module Method
          extend Privy::Internal::Type::Enum

          POST = :POST

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
