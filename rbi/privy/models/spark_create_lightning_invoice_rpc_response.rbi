# typed: strong

module Privy
  module Models
    class SparkCreateLightningInvoiceRpcResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::SparkCreateLightningInvoiceRpcResponse,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(
          Privy::SparkCreateLightningInvoiceRpcResponse::Method::TaggedSymbol
        )
      end
      attr_accessor :method_

      # A Spark Lightning receive request.
      sig { returns(T.nilable(Privy::SparkLightningReceiveRequest)) }
      attr_reader :data

      sig { params(data: Privy::SparkLightningReceiveRequest::OrHash).void }
      attr_writer :data

      # Response to the Spark `createLightningInvoice` RPC.
      sig do
        params(
          method_:
            Privy::SparkCreateLightningInvoiceRpcResponse::Method::OrSymbol,
          data: Privy::SparkLightningReceiveRequest::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        method_:,
        # A Spark Lightning receive request.
        data: nil
      )
      end

      sig do
        override.returns(
          {
            method_:
              Privy::SparkCreateLightningInvoiceRpcResponse::Method::TaggedSymbol,
            data: Privy::SparkLightningReceiveRequest
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::SparkCreateLightningInvoiceRpcResponse::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATE_LIGHTNING_INVOICE =
          T.let(
            :createLightningInvoice,
            Privy::SparkCreateLightningInvoiceRpcResponse::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::SparkCreateLightningInvoiceRpcResponse::Method::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
