# typed: strong

module Privy
  module Models
    class SparkSignMessageWithIdentityKeyRpcResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::SparkSignMessageWithIdentityKeyRpcResponse,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(
          Privy::SparkSignMessageWithIdentityKeyRpcResponse::Method::TaggedSymbol
        )
      end
      attr_accessor :method_

      # Data returned by the Spark `signMessageWithIdentityKey` RPC.
      sig do
        returns(
          T.nilable(Privy::SparkSignMessageWithIdentityKeyRpcResponseData)
        )
      end
      attr_reader :data

      sig do
        params(
          data: Privy::SparkSignMessageWithIdentityKeyRpcResponseData::OrHash
        ).void
      end
      attr_writer :data

      # Response to the Spark `signMessageWithIdentityKey` RPC.
      sig do
        params(
          method_:
            Privy::SparkSignMessageWithIdentityKeyRpcResponse::Method::OrSymbol,
          data: Privy::SparkSignMessageWithIdentityKeyRpcResponseData::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        method_:,
        # Data returned by the Spark `signMessageWithIdentityKey` RPC.
        data: nil
      )
      end

      sig do
        override.returns(
          {
            method_:
              Privy::SparkSignMessageWithIdentityKeyRpcResponse::Method::TaggedSymbol,
            data: Privy::SparkSignMessageWithIdentityKeyRpcResponseData
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
              Privy::SparkSignMessageWithIdentityKeyRpcResponse::Method
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SIGN_MESSAGE_WITH_IDENTITY_KEY =
          T.let(
            :signMessageWithIdentityKey,
            Privy::SparkSignMessageWithIdentityKeyRpcResponse::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::SparkSignMessageWithIdentityKeyRpcResponse::Method::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
