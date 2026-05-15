# typed: strong

module Privy
  module Models
    class SparkCreateLightningInvoiceRpcInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::SparkCreateLightningInvoiceRpcInput,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(Privy::SparkCreateLightningInvoiceRpcInput::Method::OrSymbol)
      end
      attr_accessor :method_

      # Parameters for the Spark `createLightningInvoice` RPC.
      sig { returns(Privy::SparkCreateLightningInvoiceRpcInputParams) }
      attr_reader :params

      sig do
        params(
          params: Privy::SparkCreateLightningInvoiceRpcInputParams::OrHash
        ).void
      end
      attr_writer :params

      # The Spark network.
      sig { returns(T.nilable(Privy::SparkNetwork::OrSymbol)) }
      attr_reader :network

      sig { params(network: Privy::SparkNetwork::OrSymbol).void }
      attr_writer :network

      # Creates a Lightning invoice for the Spark wallet.
      sig do
        params(
          method_: Privy::SparkCreateLightningInvoiceRpcInput::Method::OrSymbol,
          params: Privy::SparkCreateLightningInvoiceRpcInputParams::OrHash,
          network: Privy::SparkNetwork::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        method_:,
        # Parameters for the Spark `createLightningInvoice` RPC.
        params:,
        # The Spark network.
        network: nil
      )
      end

      sig do
        override.returns(
          {
            method_:
              Privy::SparkCreateLightningInvoiceRpcInput::Method::OrSymbol,
            params: Privy::SparkCreateLightningInvoiceRpcInputParams,
            network: Privy::SparkNetwork::OrSymbol
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::SparkCreateLightningInvoiceRpcInput::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATE_LIGHTNING_INVOICE =
          T.let(
            :createLightningInvoice,
            Privy::SparkCreateLightningInvoiceRpcInput::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::SparkCreateLightningInvoiceRpcInput::Method::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
