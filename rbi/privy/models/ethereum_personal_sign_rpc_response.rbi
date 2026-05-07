# typed: strong

module Privy
  module Models
    class EthereumPersonalSignRpcResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::EthereumPersonalSignRpcResponse,
            Privy::Internal::AnyHash
          )
        end

      # Data returned by the EVM `personal_sign` RPC.
      sig { returns(Privy::EthereumPersonalSignRpcResponseData) }
      attr_reader :data

      sig do
        params(data: Privy::EthereumPersonalSignRpcResponseData::OrHash).void
      end
      attr_writer :data

      sig do
        returns(Privy::EthereumPersonalSignRpcResponse::Method::TaggedSymbol)
      end
      attr_accessor :method_

      # Response to the EVM `personal_sign` RPC.
      sig do
        params(
          data: Privy::EthereumPersonalSignRpcResponseData::OrHash,
          method_: Privy::EthereumPersonalSignRpcResponse::Method::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Data returned by the EVM `personal_sign` RPC.
        data:,
        method_:
      )
      end

      sig do
        override.returns(
          {
            data: Privy::EthereumPersonalSignRpcResponseData,
            method_:
              Privy::EthereumPersonalSignRpcResponse::Method::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::EthereumPersonalSignRpcResponse::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PERSONAL_SIGN =
          T.let(
            :personal_sign,
            Privy::EthereumPersonalSignRpcResponse::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::EthereumPersonalSignRpcResponse::Method::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
