# typed: strong

module Privy
  module Models
    class AptosRpcResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::AptosRpcResponse, Privy::Internal::AnyHash)
        end

      # Data returned by the Aptos `aptos_signTransaction` RPC.
      sig { returns(Privy::AptosSignTransactionRpcResponseData) }
      attr_reader :data

      sig do
        params(data: Privy::AptosSignTransactionRpcResponseData::OrHash).void
      end
      attr_writer :data

      sig { returns(Privy::AptosRpcResponse::Method::OrSymbol) }
      attr_accessor :method_

      # Response to the Aptos `aptos_signTransaction` RPC.
      sig do
        params(
          data: Privy::AptosSignTransactionRpcResponseData::OrHash,
          method_: Privy::AptosRpcResponse::Method::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Data returned by the Aptos `aptos_signTransaction` RPC.
        data:,
        method_:
      )
      end

      sig do
        override.returns(
          {
            data: Privy::AptosSignTransactionRpcResponseData,
            method_: Privy::AptosRpcResponse::Method::OrSymbol
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::AptosRpcResponse::Method) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APTOS_SIGN_TRANSACTION =
          T.let(
            :aptos_signTransaction,
            Privy::AptosRpcResponse::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::AptosRpcResponse::Method::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
