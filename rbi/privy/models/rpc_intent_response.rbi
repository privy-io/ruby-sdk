# typed: strong

module Privy
  module Models
    class RpcIntentResponse < Privy::Models::BaseIntentResponse
      OrHash =
        T.type_alias do
          T.any(Privy::RpcIntentResponse, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::RpcIntentResponse::IntentType::TaggedSymbol) }
      attr_accessor :intent_type

      # The original RPC request that would be sent to the wallet endpoint
      sig { returns(Privy::RpcIntentResponse::RequestDetails) }
      attr_reader :request_details

      sig do
        params(
          request_details: Privy::RpcIntentResponse::RequestDetails::OrHash
        ).void
      end
      attr_writer :request_details

      # Result of RPC execution (only present if status is 'executed' or 'failed')
      sig { returns(T.nilable(Privy::BaseActionResult)) }
      attr_reader :action_result

      sig { params(action_result: Privy::BaseActionResult::OrHash).void }
      attr_writer :action_result

      # A wallet managed by Privy's wallet infrastructure.
      sig { returns(T.nilable(Privy::Wallet)) }
      attr_reader :current_resource_data

      sig { params(current_resource_data: Privy::Wallet::OrHash).void }
      attr_writer :current_resource_data

      # Response for an RPC intent
      sig do
        params(
          intent_type: Privy::RpcIntentResponse::IntentType::OrSymbol,
          request_details: Privy::RpcIntentResponse::RequestDetails::OrHash,
          action_result: Privy::BaseActionResult::OrHash,
          current_resource_data: Privy::Wallet::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        intent_type:,
        # The original RPC request that would be sent to the wallet endpoint
        request_details:,
        # Result of RPC execution (only present if status is 'executed' or 'failed')
        action_result: nil,
        # A wallet managed by Privy's wallet infrastructure.
        current_resource_data: nil
      )
      end

      sig do
        override.returns(
          {
            intent_type: Privy::RpcIntentResponse::IntentType::TaggedSymbol,
            request_details: Privy::RpcIntentResponse::RequestDetails,
            action_result: Privy::BaseActionResult,
            current_resource_data: Privy::Wallet
          }
        )
      end
      def to_hash
      end

      module IntentType
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::RpcIntentResponse::IntentType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RPC = T.let(:RPC, Privy::RpcIntentResponse::IntentType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::RpcIntentResponse::IntentType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class RequestDetails < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::RpcIntentResponse::RequestDetails,
              Privy::Internal::AnyHash
            )
          end

        # Request body for wallet RPC operations, discriminated by method.
        sig { returns(Privy::WalletRpcRequestBody::Variants) }
        attr_accessor :body

        sig do
          returns(
            Privy::RpcIntentResponse::RequestDetails::Method::TaggedSymbol
          )
        end
        attr_accessor :method_

        sig { returns(String) }
        attr_accessor :url

        # The original RPC request that would be sent to the wallet endpoint
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
                Privy::TronSignTransactionRpcInput::OrHash,
                Privy::TronSendTransactionRpcInput::OrHash,
                Privy::ExportPrivateKeyRpcInput::OrHash,
                Privy::ExportSeedPhraseRpcInput::OrHash
              ),
            method_: Privy::RpcIntentResponse::RequestDetails::Method::OrSymbol,
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
              body: Privy::WalletRpcRequestBody::Variants,
              method_:
                Privy::RpcIntentResponse::RequestDetails::Method::TaggedSymbol,
              url: String
            }
          )
        end
        def to_hash
        end

        module Method
          extend Privy::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Privy::RpcIntentResponse::RequestDetails::Method)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          POST =
            T.let(
              :POST,
              Privy::RpcIntentResponse::RequestDetails::Method::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Privy::RpcIntentResponse::RequestDetails::Method::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
