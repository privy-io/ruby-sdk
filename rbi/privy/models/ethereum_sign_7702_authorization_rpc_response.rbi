# typed: strong

module Privy
  module Models
    class EthereumSign7702AuthorizationRpcResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::EthereumSign7702AuthorizationRpcResponse,
            Privy::Internal::AnyHash
          )
        end

      # Data returned by the EVM `eth_sign7702Authorization` RPC.
      sig { returns(Privy::EthereumSign7702AuthorizationRpcResponseData) }
      attr_reader :data

      sig do
        params(
          data: Privy::EthereumSign7702AuthorizationRpcResponseData::OrHash
        ).void
      end
      attr_writer :data

      sig do
        returns(
          Privy::EthereumSign7702AuthorizationRpcResponse::Method::TaggedSymbol
        )
      end
      attr_accessor :method_

      # Response to the EVM `eth_sign7702Authorization` RPC.
      sig do
        params(
          data: Privy::EthereumSign7702AuthorizationRpcResponseData::OrHash,
          method_:
            Privy::EthereumSign7702AuthorizationRpcResponse::Method::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Data returned by the EVM `eth_sign7702Authorization` RPC.
        data:,
        method_:
      )
      end

      sig do
        override.returns(
          {
            data: Privy::EthereumSign7702AuthorizationRpcResponseData,
            method_:
              Privy::EthereumSign7702AuthorizationRpcResponse::Method::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Privy::EthereumSign7702AuthorizationRpcResponse::Method
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ETH_SIGN7702_AUTHORIZATION =
          T.let(
            :eth_sign7702Authorization,
            Privy::EthereumSign7702AuthorizationRpcResponse::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::EthereumSign7702AuthorizationRpcResponse::Method::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
