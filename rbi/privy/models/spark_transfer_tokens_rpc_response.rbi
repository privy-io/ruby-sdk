# typed: strong

module Privy
  module Models
    class SparkTransferTokensRpcResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::SparkTransferTokensRpcResponse, Privy::Internal::AnyHash)
        end

      sig do
        returns(Privy::SparkTransferTokensRpcResponse::Method::TaggedSymbol)
      end
      attr_accessor :method_

      # Data returned by the Spark `transferTokens` RPC.
      sig { returns(T.nilable(Privy::SparkTransferTokensRpcResponseData)) }
      attr_reader :data

      sig do
        params(data: Privy::SparkTransferTokensRpcResponseData::OrHash).void
      end
      attr_writer :data

      # Response to the Spark `transferTokens` RPC.
      sig do
        params(
          method_: Privy::SparkTransferTokensRpcResponse::Method::OrSymbol,
          data: Privy::SparkTransferTokensRpcResponseData::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        method_:,
        # Data returned by the Spark `transferTokens` RPC.
        data: nil
      )
      end

      sig do
        override.returns(
          {
            method_:
              Privy::SparkTransferTokensRpcResponse::Method::TaggedSymbol,
            data: Privy::SparkTransferTokensRpcResponseData
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::SparkTransferTokensRpcResponse::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRANSFER_TOKENS =
          T.let(
            :transferTokens,
            Privy::SparkTransferTokensRpcResponse::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::SparkTransferTokensRpcResponse::Method::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
