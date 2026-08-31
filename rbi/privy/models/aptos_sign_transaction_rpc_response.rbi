# typed: strong

module Privy
  module Models
    class AptosSignTransactionRpcResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::AptosSignTransactionRpcResponse,
            Privy::Internal::AnyHash
          )
        end

      # Data returned by the Aptos `aptos_signTransaction` RPC.
      sig { returns(Privy::AptosSignTransactionRpcResponseData) }
      attr_reader :data

      sig do
        params(data: Privy::AptosSignTransactionRpcResponseData::OrHash).void
      end
      attr_writer :data

      sig do
        returns(Privy::AptosSignTransactionRpcResponse::Method::TaggedSymbol)
      end
      attr_accessor :method_

      # Response to the Aptos `aptos_signTransaction` RPC.
      sig do
        params(
          data: Privy::AptosSignTransactionRpcResponseData::OrHash,
          method_: Privy::AptosSignTransactionRpcResponse::Method::OrSymbol
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
            method_:
              Privy::AptosSignTransactionRpcResponse::Method::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::AptosSignTransactionRpcResponse::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APTOS_SIGN_TRANSACTION =
          T.let(
            :aptos_signTransaction,
            Privy::AptosSignTransactionRpcResponse::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::AptosSignTransactionRpcResponse::Method::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
