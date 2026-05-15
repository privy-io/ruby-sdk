# typed: strong

module Privy
  module Models
    class EthereumSendCallsRpcResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::EthereumSendCallsRpcResponse, Privy::Internal::AnyHash)
        end

      # Data returned by the `wallet_sendCalls` RPC.
      sig { returns(Privy::EthereumSendCallsRpcResponseData) }
      attr_reader :data

      sig { params(data: Privy::EthereumSendCallsRpcResponseData::OrHash).void }
      attr_writer :data

      sig { returns(Privy::EthereumSendCallsRpcResponse::Method::TaggedSymbol) }
      attr_accessor :method_

      # Response to the `wallet_sendCalls` RPC.
      sig do
        params(
          data: Privy::EthereumSendCallsRpcResponseData::OrHash,
          method_: Privy::EthereumSendCallsRpcResponse::Method::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Data returned by the `wallet_sendCalls` RPC.
        data:,
        method_:
      )
      end

      sig do
        override.returns(
          {
            data: Privy::EthereumSendCallsRpcResponseData,
            method_: Privy::EthereumSendCallsRpcResponse::Method::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::EthereumSendCallsRpcResponse::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WALLET_SEND_CALLS =
          T.let(
            :wallet_sendCalls,
            Privy::EthereumSendCallsRpcResponse::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::EthereumSendCallsRpcResponse::Method::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
