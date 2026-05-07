# typed: strong

module Privy
  module Models
    class EthereumSendTransactionRpcResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::EthereumSendTransactionRpcResponse,
            Privy::Internal::AnyHash
          )
        end

      # Data returned by the EVM `eth_sendTransaction` RPC.
      sig { returns(Privy::EthereumSendTransactionRpcResponseData) }
      attr_reader :data

      sig do
        params(data: Privy::EthereumSendTransactionRpcResponseData::OrHash).void
      end
      attr_writer :data

      sig do
        returns(Privy::EthereumSendTransactionRpcResponse::Method::TaggedSymbol)
      end
      attr_accessor :method_

      # Response to the EVM `eth_sendTransaction` RPC.
      sig do
        params(
          data: Privy::EthereumSendTransactionRpcResponseData::OrHash,
          method_: Privy::EthereumSendTransactionRpcResponse::Method::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Data returned by the EVM `eth_sendTransaction` RPC.
        data:,
        method_:
      )
      end

      sig do
        override.returns(
          {
            data: Privy::EthereumSendTransactionRpcResponseData,
            method_:
              Privy::EthereumSendTransactionRpcResponse::Method::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::EthereumSendTransactionRpcResponse::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ETH_SEND_TRANSACTION =
          T.let(
            :eth_sendTransaction,
            Privy::EthereumSendTransactionRpcResponse::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::EthereumSendTransactionRpcResponse::Method::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
