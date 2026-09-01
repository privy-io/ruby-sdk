# typed: strong

module Privy
  module Models
    class NearSignTransactionRpcResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::NearSignTransactionRpcResponse, Privy::Internal::AnyHash)
        end

      # Data returned by the NEAR `near_signTransaction` RPC.
      sig { returns(Privy::NearSignTransactionRpcResponseData) }
      attr_reader :data

      sig do
        params(data: Privy::NearSignTransactionRpcResponseData::OrHash).void
      end
      attr_writer :data

      sig do
        returns(Privy::NearSignTransactionRpcResponse::Method::TaggedSymbol)
      end
      attr_accessor :method_

      # Response to the NEAR `near_signTransaction` RPC.
      sig do
        params(
          data: Privy::NearSignTransactionRpcResponseData::OrHash,
          method_: Privy::NearSignTransactionRpcResponse::Method::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Data returned by the NEAR `near_signTransaction` RPC.
        data:,
        method_:
      )
      end

      sig do
        override.returns(
          {
            data: Privy::NearSignTransactionRpcResponseData,
            method_: Privy::NearSignTransactionRpcResponse::Method::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::NearSignTransactionRpcResponse::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NEAR_SIGN_TRANSACTION =
          T.let(
            :near_signTransaction,
            Privy::NearSignTransactionRpcResponse::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::NearSignTransactionRpcResponse::Method::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
