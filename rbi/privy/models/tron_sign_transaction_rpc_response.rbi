# typed: strong

module Privy
  module Models
    class TronSignTransactionRpcResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TronSignTransactionRpcResponse, Privy::Internal::AnyHash)
        end

      # Data returned by the Tron `tron_signTransaction` RPC.
      sig { returns(Privy::TronSignTransactionRpcResponseData) }
      attr_reader :data

      sig do
        params(data: Privy::TronSignTransactionRpcResponseData::OrHash).void
      end
      attr_writer :data

      sig do
        returns(Privy::TronSignTransactionRpcResponse::Method::TaggedSymbol)
      end
      attr_accessor :method_

      # Response to the Tron `tron_signTransaction` RPC.
      sig do
        params(
          data: Privy::TronSignTransactionRpcResponseData::OrHash,
          method_: Privy::TronSignTransactionRpcResponse::Method::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Data returned by the Tron `tron_signTransaction` RPC.
        data:,
        method_:
      )
      end

      sig do
        override.returns(
          {
            data: Privy::TronSignTransactionRpcResponseData,
            method_: Privy::TronSignTransactionRpcResponse::Method::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::TronSignTransactionRpcResponse::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRON_SIGN_TRANSACTION =
          T.let(
            :tron_signTransaction,
            Privy::TronSignTransactionRpcResponse::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::TronSignTransactionRpcResponse::Method::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
