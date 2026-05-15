# typed: strong

module Privy
  module Models
    class SparkPayLightningInvoiceRpcResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::SparkPayLightningInvoiceRpcResponse,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(
          Privy::SparkPayLightningInvoiceRpcResponse::Method::TaggedSymbol
        )
      end
      attr_accessor :method_

      # A Spark transfer.
      sig do
        returns(
          T.nilable(Privy::SparkPayLightningInvoiceRpcResponse::Data::Variants)
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            T.any(
              Privy::SparkTransfer::OrHash,
              Privy::SparkLightningSendRequest::OrHash
            )
        ).void
      end
      attr_writer :data

      # Response to the Spark `payLightningInvoice` RPC.
      sig do
        params(
          method_: Privy::SparkPayLightningInvoiceRpcResponse::Method::OrSymbol,
          data:
            T.any(
              Privy::SparkTransfer::OrHash,
              Privy::SparkLightningSendRequest::OrHash
            )
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
            method_:
              Privy::SparkPayLightningInvoiceRpcResponse::Method::TaggedSymbol,
            data: Privy::SparkPayLightningInvoiceRpcResponse::Data::Variants
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::SparkPayLightningInvoiceRpcResponse::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PAY_LIGHTNING_INVOICE =
          T.let(
            :payLightningInvoice,
            Privy::SparkPayLightningInvoiceRpcResponse::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::SparkPayLightningInvoiceRpcResponse::Method::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # A Spark transfer.
      module Data
        extend Privy::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(Privy::SparkTransfer, Privy::SparkLightningSendRequest)
          end

        sig do
          override.returns(
            T::Array[Privy::SparkPayLightningInvoiceRpcResponse::Data::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
