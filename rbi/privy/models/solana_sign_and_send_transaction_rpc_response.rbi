# typed: strong

module Privy
  module Models
    class SolanaSignAndSendTransactionRpcResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::SolanaSignAndSendTransactionRpcResponse,
            Privy::Internal::AnyHash
          )
        end

      # Data returned by the SVM `signAndSendTransaction` RPC.
      sig { returns(Privy::SolanaSignAndSendTransactionRpcResponseData) }
      attr_reader :data

      sig do
        params(
          data: Privy::SolanaSignAndSendTransactionRpcResponseData::OrHash
        ).void
      end
      attr_writer :data

      sig do
        returns(
          Privy::SolanaSignAndSendTransactionRpcResponse::Method::TaggedSymbol
        )
      end
      attr_accessor :method_

      # Response to the SVM `signAndSendTransaction` RPC.
      sig do
        params(
          data: Privy::SolanaSignAndSendTransactionRpcResponseData::OrHash,
          method_:
            Privy::SolanaSignAndSendTransactionRpcResponse::Method::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Data returned by the SVM `signAndSendTransaction` RPC.
        data:,
        method_:
      )
      end

      sig do
        override.returns(
          {
            data: Privy::SolanaSignAndSendTransactionRpcResponseData,
            method_:
              Privy::SolanaSignAndSendTransactionRpcResponse::Method::TaggedSymbol
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
              Privy::SolanaSignAndSendTransactionRpcResponse::Method
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SIGN_AND_SEND_TRANSACTION =
          T.let(
            :signAndSendTransaction,
            Privy::SolanaSignAndSendTransactionRpcResponse::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::SolanaSignAndSendTransactionRpcResponse::Method::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
