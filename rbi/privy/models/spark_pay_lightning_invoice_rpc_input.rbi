# typed: strong

module Privy
  module Models
    class SparkPayLightningInvoiceRpcInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::SparkPayLightningInvoiceRpcInput,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(Privy::SparkPayLightningInvoiceRpcInput::Method::OrSymbol) }
      attr_accessor :method_

      # Parameters for the Spark `payLightningInvoice` RPC.
      sig { returns(Privy::SparkPayLightningInvoiceRpcInputParams) }
      attr_reader :params

      sig do
        params(
          params: Privy::SparkPayLightningInvoiceRpcInputParams::OrHash
        ).void
      end
      attr_writer :params

      # The Spark network.
      sig { returns(T.nilable(Privy::SparkNetwork::OrSymbol)) }
      attr_reader :network

      sig { params(network: Privy::SparkNetwork::OrSymbol).void }
      attr_writer :network

      # Pays a Lightning invoice from the Spark wallet.
      sig do
        params(
          method_: Privy::SparkPayLightningInvoiceRpcInput::Method::OrSymbol,
          params: Privy::SparkPayLightningInvoiceRpcInputParams::OrHash,
          network: Privy::SparkNetwork::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        method_:,
        # Parameters for the Spark `payLightningInvoice` RPC.
        params:,
        # The Spark network.
        network: nil
      )
      end

      sig do
        override.returns(
          {
            method_: Privy::SparkPayLightningInvoiceRpcInput::Method::OrSymbol,
            params: Privy::SparkPayLightningInvoiceRpcInputParams,
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
            T.all(Symbol, Privy::SparkPayLightningInvoiceRpcInput::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PAY_LIGHTNING_INVOICE =
          T.let(
            :payLightningInvoice,
            Privy::SparkPayLightningInvoiceRpcInput::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::SparkPayLightningInvoiceRpcInput::Method::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
