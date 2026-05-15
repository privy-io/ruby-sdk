# typed: strong

module Privy
  module Models
    class EthereumSignTypedDataRpcResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::EthereumSignTypedDataRpcResponse,
            Privy::Internal::AnyHash
          )
        end

      # Data returned by the EVM `eth_signTypedData_v4` RPC.
      sig { returns(Privy::EthereumSignTypedDataRpcResponseData) }
      attr_reader :data

      sig do
        params(data: Privy::EthereumSignTypedDataRpcResponseData::OrHash).void
      end
      attr_writer :data

      sig do
        returns(Privy::EthereumSignTypedDataRpcResponse::Method::TaggedSymbol)
      end
      attr_accessor :method_

      # Response to the EVM `eth_signTypedData_v4` RPC.
      sig do
        params(
          data: Privy::EthereumSignTypedDataRpcResponseData::OrHash,
          method_: Privy::EthereumSignTypedDataRpcResponse::Method::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Data returned by the EVM `eth_signTypedData_v4` RPC.
        data:,
        method_:
      )
      end

      sig do
        override.returns(
          {
            data: Privy::EthereumSignTypedDataRpcResponseData,
            method_:
              Privy::EthereumSignTypedDataRpcResponse::Method::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::EthereumSignTypedDataRpcResponse::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ETH_SIGN_TYPED_DATA_V4 =
          T.let(
            :eth_signTypedData_v4,
            Privy::EthereumSignTypedDataRpcResponse::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::EthereumSignTypedDataRpcResponse::Method::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
