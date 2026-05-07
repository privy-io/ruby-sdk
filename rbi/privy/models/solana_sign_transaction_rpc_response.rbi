# typed: strong

module Privy
  module Models
    class SolanaSignTransactionRpcResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::SolanaSignTransactionRpcResponse,
            Privy::Internal::AnyHash
          )
        end

      # Data returned by the SVM `signTransaction` RPC.
      sig { returns(Privy::SolanaSignTransactionRpcResponseData) }
      attr_reader :data

      sig do
        params(data: Privy::SolanaSignTransactionRpcResponseData::OrHash).void
      end
      attr_writer :data

      sig do
        returns(Privy::SolanaSignTransactionRpcResponse::Method::TaggedSymbol)
      end
      attr_accessor :method_

      # Response to the SVM `signTransaction` RPC.
      sig do
        params(
          data: Privy::SolanaSignTransactionRpcResponseData::OrHash,
          method_: Privy::SolanaSignTransactionRpcResponse::Method::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Data returned by the SVM `signTransaction` RPC.
        data:,
        method_:
      )
      end

      sig do
        override.returns(
          {
            data: Privy::SolanaSignTransactionRpcResponseData,
            method_:
              Privy::SolanaSignTransactionRpcResponse::Method::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::SolanaSignTransactionRpcResponse::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SIGN_TRANSACTION =
          T.let(
            :signTransaction,
            Privy::SolanaSignTransactionRpcResponse::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::SolanaSignTransactionRpcResponse::Method::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
