# typed: strong

module Privy
  module Models
    class TronSendTransactionRpcResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TronSendTransactionRpcResponse, Privy::Internal::AnyHash)
        end

      # Data returned by the Tron `tron_sendTransaction` RPC.
      sig { returns(Privy::TronSendTransactionRpcResponseData) }
      attr_reader :data

      sig do
        params(data: Privy::TronSendTransactionRpcResponseData::OrHash).void
      end
      attr_writer :data

      sig do
        returns(Privy::TronSendTransactionRpcResponse::Method::TaggedSymbol)
      end
      attr_accessor :method_

      # Response to the Tron `tron_sendTransaction` RPC.
      sig do
        params(
          data: Privy::TronSendTransactionRpcResponseData::OrHash,
          method_: Privy::TronSendTransactionRpcResponse::Method::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Data returned by the Tron `tron_sendTransaction` RPC.
        data:,
        method_:
      )
      end

      sig do
        override.returns(
          {
            data: Privy::TronSendTransactionRpcResponseData,
            method_: Privy::TronSendTransactionRpcResponse::Method::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::TronSendTransactionRpcResponse::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRON_SEND_TRANSACTION =
          T.let(
            :tron_sendTransaction,
            Privy::TronSendTransactionRpcResponse::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::TronSendTransactionRpcResponse::Method::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
