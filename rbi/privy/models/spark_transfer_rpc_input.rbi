# typed: strong

module Privy
  module Models
    class SparkTransferRpcInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::SparkTransferRpcInput, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::SparkTransferRpcInput::Method::OrSymbol) }
      attr_accessor :method_

      # Parameters for the Spark `transfer` RPC.
      sig { returns(Privy::SparkTransferRpcInputParams) }
      attr_reader :params

      sig { params(params: Privy::SparkTransferRpcInputParams::OrHash).void }
      attr_writer :params

      # The Spark network.
      sig { returns(T.nilable(Privy::SparkNetwork::OrSymbol)) }
      attr_reader :network

      sig { params(network: Privy::SparkNetwork::OrSymbol).void }
      attr_writer :network

      # Transfers satoshis to a Spark address.
      sig do
        params(
          method_: Privy::SparkTransferRpcInput::Method::OrSymbol,
          params: Privy::SparkTransferRpcInputParams::OrHash,
          network: Privy::SparkNetwork::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        method_:,
        # Parameters for the Spark `transfer` RPC.
        params:,
        # The Spark network.
        network: nil
      )
      end

      sig do
        override.returns(
          {
            method_: Privy::SparkTransferRpcInput::Method::OrSymbol,
            params: Privy::SparkTransferRpcInputParams,
            network: Privy::SparkNetwork::OrSymbol
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::SparkTransferRpcInput::Method) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRANSFER =
          T.let(:transfer, Privy::SparkTransferRpcInput::Method::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::SparkTransferRpcInput::Method::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
