# typed: strong

module Privy
  module Models
    class EthereumSignTransactionRpcResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::EthereumSignTransactionRpcResponse,
            Privy::Internal::AnyHash
          )
        end

      # Data returned by the EVM `eth_signTransaction` RPC.
      sig { returns(Privy::EthereumSignTransactionRpcResponseData) }
      attr_reader :data

      sig do
        params(data: Privy::EthereumSignTransactionRpcResponseData::OrHash).void
      end
      attr_writer :data

      sig do
        returns(Privy::EthereumSignTransactionRpcResponse::Method::TaggedSymbol)
      end
      attr_accessor :method_

      # Response to the EVM `eth_signTransaction` RPC.
      sig do
        params(
          data: Privy::EthereumSignTransactionRpcResponseData::OrHash,
          method_: Privy::EthereumSignTransactionRpcResponse::Method::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Data returned by the EVM `eth_signTransaction` RPC.
        data:,
        method_:
      )
      end

      sig do
        override.returns(
          {
            data: Privy::EthereumSignTransactionRpcResponseData,
            method_:
              Privy::EthereumSignTransactionRpcResponse::Method::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::EthereumSignTransactionRpcResponse::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ETH_SIGN_TRANSACTION =
          T.let(
            :eth_signTransaction,
            Privy::EthereumSignTransactionRpcResponse::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::EthereumSignTransactionRpcResponse::Method::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
