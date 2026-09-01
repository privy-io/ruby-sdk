# typed: strong

module Privy
  module Models
    class NearRpcRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::NearRpcRequestBody, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::NearRpcRequestBody::Method::OrSymbol) }
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
          method_: Privy::NearRpcRequestBody::Method::OrSymbol,
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
            method_: Privy::NearRpcRequestBody::Method::OrSymbol,
            params: Privy::NearSignTransactionRpcRequestBodyParams
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::NearRpcRequestBody::Method) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NEAR_SIGN_TRANSACTION =
          T.let(
            :near_signTransaction,
            Privy::NearRpcRequestBody::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::NearRpcRequestBody::Method::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
