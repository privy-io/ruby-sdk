# typed: strong

module Privy
  module Models
    class NearRpcResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::NearRpcResponse, Privy::Internal::AnyHash) }

      # Data returned by the NEAR `near_signTransaction` RPC.
      sig { returns(Privy::NearSignTransactionRpcResponseData) }
      attr_reader :data

      sig do
        params(data: Privy::NearSignTransactionRpcResponseData::OrHash).void
      end
      attr_writer :data

      sig { returns(Privy::NearRpcResponse::Method::OrSymbol) }
      attr_accessor :method_

      # Response to the NEAR `near_signTransaction` RPC.
      sig do
        params(
          data: Privy::NearSignTransactionRpcResponseData::OrHash,
          method_: Privy::NearRpcResponse::Method::OrSymbol
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
            method_: Privy::NearRpcResponse::Method::OrSymbol
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::NearRpcResponse::Method) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NEAR_SIGN_TRANSACTION =
          T.let(
            :near_signTransaction,
            Privy::NearRpcResponse::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::NearRpcResponse::Method::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
