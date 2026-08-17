# typed: strong

module Privy
  module Models
    class XrplRpcResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::XrplRpcResponse, Privy::Internal::AnyHash) }

      # Data returned by the XRPL `xrpl_signTransaction` RPC.
      sig { returns(Privy::XrplSignTransactionRpcResponseData) }
      attr_reader :data

      sig do
        params(data: Privy::XrplSignTransactionRpcResponseData::OrHash).void
      end
      attr_writer :data

      sig { returns(Privy::XrplRpcResponse::Method::OrSymbol) }
      attr_accessor :method_

      # Response to the XRPL `xrpl_signTransaction` RPC.
      sig do
        params(
          data: Privy::XrplSignTransactionRpcResponseData::OrHash,
          method_: Privy::XrplRpcResponse::Method::OrSymbol
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
            method_: Privy::XrplRpcResponse::Method::OrSymbol
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::XrplRpcResponse::Method) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        XRPL_SIGN_TRANSACTION =
          T.let(
            :xrpl_signTransaction,
            Privy::XrplRpcResponse::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::XrplRpcResponse::Method::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
