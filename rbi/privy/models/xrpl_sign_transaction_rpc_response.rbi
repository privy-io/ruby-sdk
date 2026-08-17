# typed: strong

module Privy
  module Models
    class XrplSignTransactionRpcResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::XrplSignTransactionRpcResponse, Privy::Internal::AnyHash)
        end

      # Data returned by the XRPL `xrpl_signTransaction` RPC.
      sig { returns(Privy::XrplSignTransactionRpcResponseData) }
      attr_reader :data

      sig do
        params(data: Privy::XrplSignTransactionRpcResponseData::OrHash).void
      end
      attr_writer :data

      sig do
        returns(Privy::XrplSignTransactionRpcResponse::Method::TaggedSymbol)
      end
      attr_accessor :method_

      # Response to the XRPL `xrpl_signTransaction` RPC.
      sig do
        params(
          data: Privy::XrplSignTransactionRpcResponseData::OrHash,
          method_: Privy::XrplSignTransactionRpcResponse::Method::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Data returned by the XRPL `xrpl_signTransaction` RPC.
        data:,
        method_:
      )
      end

      sig do
        override.returns(
          {
            data: Privy::XrplSignTransactionRpcResponseData,
            method_: Privy::XrplSignTransactionRpcResponse::Method::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::XrplSignTransactionRpcResponse::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        XRPL_SIGN_TRANSACTION =
          T.let(
            :xrpl_signTransaction,
            Privy::XrplSignTransactionRpcResponse::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::XrplSignTransactionRpcResponse::Method::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
