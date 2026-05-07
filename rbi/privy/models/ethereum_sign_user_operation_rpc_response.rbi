# typed: strong

module Privy
  module Models
    class EthereumSignUserOperationRpcResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::EthereumSignUserOperationRpcResponse,
            Privy::Internal::AnyHash
          )
        end

      # Data returned by the EVM `eth_signUserOperation` RPC.
      sig { returns(Privy::EthereumSignUserOperationRpcResponseData) }
      attr_reader :data

      sig do
        params(
          data: Privy::EthereumSignUserOperationRpcResponseData::OrHash
        ).void
      end
      attr_writer :data

      sig do
        returns(
          Privy::EthereumSignUserOperationRpcResponse::Method::TaggedSymbol
        )
      end
      attr_accessor :method_

      # Response to the EVM `eth_signUserOperation` RPC.
      sig do
        params(
          data: Privy::EthereumSignUserOperationRpcResponseData::OrHash,
          method_: Privy::EthereumSignUserOperationRpcResponse::Method::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Data returned by the EVM `eth_signUserOperation` RPC.
        data:,
        method_:
      )
      end

      sig do
        override.returns(
          {
            data: Privy::EthereumSignUserOperationRpcResponseData,
            method_:
              Privy::EthereumSignUserOperationRpcResponse::Method::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::EthereumSignUserOperationRpcResponse::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ETH_SIGN_USER_OPERATION =
          T.let(
            :eth_signUserOperation,
            Privy::EthereumSignUserOperationRpcResponse::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::EthereumSignUserOperationRpcResponse::Method::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
