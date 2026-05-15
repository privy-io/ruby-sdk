# typed: strong

module Privy
  module Models
    class SolanaSignMessageRpcResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::SolanaSignMessageRpcResponse, Privy::Internal::AnyHash)
        end

      # Data returned by the SVM `signMessage` RPC.
      sig { returns(Privy::SolanaSignMessageRpcResponseData) }
      attr_reader :data

      sig { params(data: Privy::SolanaSignMessageRpcResponseData::OrHash).void }
      attr_writer :data

      sig { returns(Privy::SolanaSignMessageRpcResponse::Method::TaggedSymbol) }
      attr_accessor :method_

      # Response to the SVM `signMessage` RPC.
      sig do
        params(
          data: Privy::SolanaSignMessageRpcResponseData::OrHash,
          method_: Privy::SolanaSignMessageRpcResponse::Method::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Data returned by the SVM `signMessage` RPC.
        data:,
        method_:
      )
      end

      sig do
        override.returns(
          {
            data: Privy::SolanaSignMessageRpcResponseData,
            method_: Privy::SolanaSignMessageRpcResponse::Method::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::SolanaSignMessageRpcResponse::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SIGN_MESSAGE =
          T.let(
            :signMessage,
            Privy::SolanaSignMessageRpcResponse::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::SolanaSignMessageRpcResponse::Method::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
