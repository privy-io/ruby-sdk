# typed: strong

module Privy
  module Models
    class SparkTransferRpcResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::SparkTransferRpcResponse, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::SparkTransferRpcResponse::Method::TaggedSymbol) }
      attr_accessor :method_

      # A Spark transfer.
      sig { returns(T.nilable(Privy::SparkTransfer)) }
      attr_reader :data

      sig { params(data: Privy::SparkTransfer::OrHash).void }
      attr_writer :data

      # Response to the Spark `transfer` RPC.
      sig do
        params(
          method_: Privy::SparkTransferRpcResponse::Method::OrSymbol,
          data: Privy::SparkTransfer::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        method_:,
        # A Spark transfer.
        data: nil
      )
      end

      sig do
        override.returns(
          {
            method_: Privy::SparkTransferRpcResponse::Method::TaggedSymbol,
            data: Privy::SparkTransfer
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::SparkTransferRpcResponse::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRANSFER =
          T.let(
            :transfer,
            Privy::SparkTransferRpcResponse::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::SparkTransferRpcResponse::Method::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
