# typed: strong

module Privy
  module Models
    class EthereumSecp256k1SignRpcResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::EthereumSecp256k1SignRpcResponse,
            Privy::Internal::AnyHash
          )
        end

      # Data returned by the EVM `secp256k1_sign` RPC.
      sig { returns(Privy::EthereumSecp256k1SignRpcResponseData) }
      attr_reader :data

      sig do
        params(data: Privy::EthereumSecp256k1SignRpcResponseData::OrHash).void
      end
      attr_writer :data

      sig do
        returns(Privy::EthereumSecp256k1SignRpcResponse::Method::TaggedSymbol)
      end
      attr_accessor :method_

      # Response to the EVM `secp256k1_sign` RPC.
      sig do
        params(
          data: Privy::EthereumSecp256k1SignRpcResponseData::OrHash,
          method_: Privy::EthereumSecp256k1SignRpcResponse::Method::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Data returned by the EVM `secp256k1_sign` RPC.
        data:,
        method_:
      )
      end

      sig do
        override.returns(
          {
            data: Privy::EthereumSecp256k1SignRpcResponseData,
            method_:
              Privy::EthereumSecp256k1SignRpcResponse::Method::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::EthereumSecp256k1SignRpcResponse::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SECP256K1_SIGN =
          T.let(
            :secp256k1_sign,
            Privy::EthereumSecp256k1SignRpcResponse::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::EthereumSecp256k1SignRpcResponse::Method::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
