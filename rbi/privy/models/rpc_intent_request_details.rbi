# typed: strong

module Privy
  module Models
    class RpcIntentRequestDetails < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::RpcIntentRequestDetails, Privy::Internal::AnyHash)
        end

      # Request body for wallet RPC operations, discriminated by method.
      sig do
        returns(
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
            Privy::ExportPrivateKeyRpcInput,
            Privy::ExportSeedPhraseRpcInput
          )
        )
      end
      attr_accessor :body

      sig { returns(Privy::RpcIntentRequestDetails::Method::OrSymbol) }
      attr_accessor :method_

      sig { returns(String) }
      attr_accessor :url

      # Request details for an RPC intent.
      sig do
        params(
          body:
            T.any(
              Privy::EthereumSignTransactionRpcInput::OrHash,
              Privy::EthereumSendTransactionRpcInput::OrHash,
              Privy::EthereumPersonalSignRpcInput::OrHash,
              Privy::EthereumSignTypedDataRpcInput::OrHash,
              Privy::EthereumSecp256k1SignRpcInput::OrHash,
              Privy::EthereumSign7702AuthorizationRpcInput::OrHash,
              Privy::EthereumSignUserOperationRpcInput::OrHash,
              Privy::EthereumSendCallsRpcInput::OrHash,
              Privy::SolanaSignTransactionRpcInput::OrHash,
              Privy::SolanaSignAndSendTransactionRpcInput::OrHash,
              Privy::SolanaSignMessageRpcInput::OrHash,
              Privy::SparkTransferRpcInput::OrHash,
              Privy::SparkGetBalanceRpcInput::OrHash,
              Privy::SparkTransferTokensRpcInput::OrHash,
              Privy::SparkGetStaticDepositAddressRpcInput::OrHash,
              Privy::SparkGetClaimStaticDepositQuoteRpcInput::OrHash,
              Privy::SparkClaimStaticDepositRpcInput::OrHash,
              Privy::SparkCreateLightningInvoiceRpcInput::OrHash,
              Privy::SparkPayLightningInvoiceRpcInput::OrHash,
              Privy::SparkSignMessageWithIdentityKeyRpcInput::OrHash,
              Privy::ExportPrivateKeyRpcInput::OrHash,
              Privy::ExportSeedPhraseRpcInput::OrHash
            ),
          method_: Privy::RpcIntentRequestDetails::Method::OrSymbol,
          url: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Request body for wallet RPC operations, discriminated by method.
        body:,
        method_:,
        url:
      )
      end

      sig do
        override.returns(
          {
            body:
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
                Privy::ExportPrivateKeyRpcInput,
                Privy::ExportSeedPhraseRpcInput
              ),
            method_: Privy::RpcIntentRequestDetails::Method::OrSymbol,
            url: String
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::RpcIntentRequestDetails::Method) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        POST =
          T.let(:POST, Privy::RpcIntentRequestDetails::Method::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::RpcIntentRequestDetails::Method::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
