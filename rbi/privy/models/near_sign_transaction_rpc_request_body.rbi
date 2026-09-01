# typed: strong

module Privy
  module Models
    class NearSignTransactionRpcRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::NearSignTransactionRpcRequestBody,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(Privy::NearSignTransactionRpcRequestBody::Method::OrSymbol)
      end
      attr_accessor :method_

      # Parameters for the NEAR `near_signTransaction` RPC.
      sig { returns(Privy::NearSignTransactionRpcRequestBodyParams) }
      attr_reader :params

      sig do
        params(
          params: Privy::NearSignTransactionRpcRequestBodyParams::OrHash
        ).void
      end
      attr_writer :params

      # Executes the NEAR `near_signTransaction` RPC to sign a transaction. The caller
      # is responsible for broadcasting.
      sig do
        params(
          method_: Privy::NearSignTransactionRpcRequestBody::Method::OrSymbol,
          params: Privy::NearSignTransactionRpcRequestBodyParams::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        method_:,
        # Parameters for the NEAR `near_signTransaction` RPC.
        params:
      )
      end

      sig do
        override.returns(
          {
            method_: Privy::NearSignTransactionRpcRequestBody::Method::OrSymbol,
            params: Privy::NearSignTransactionRpcRequestBodyParams
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::NearSignTransactionRpcRequestBody::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NEAR_SIGN_TRANSACTION =
          T.let(
            :near_signTransaction,
            Privy::NearSignTransactionRpcRequestBody::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::NearSignTransactionRpcRequestBody::Method::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
