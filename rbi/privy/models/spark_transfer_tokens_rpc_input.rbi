# typed: strong

module Privy
  module Models
    class SparkTransferTokensRpcInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::SparkTransferTokensRpcInput, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::SparkTransferTokensRpcInput::Method::OrSymbol) }
      attr_accessor :method_

      # Parameters for the Spark `transferTokens` RPC.
      sig { returns(Privy::SparkTransferTokensRpcInputParams) }
      attr_reader :params

      sig do
        params(params: Privy::SparkTransferTokensRpcInputParams::OrHash).void
      end
      attr_writer :params

      # The Spark network.
      sig { returns(T.nilable(Privy::SparkNetwork::OrSymbol)) }
      attr_reader :network

      sig { params(network: Privy::SparkNetwork::OrSymbol).void }
      attr_writer :network

      # Transfers tokens to a Spark address.
      sig do
        params(
          method_: Privy::SparkTransferTokensRpcInput::Method::OrSymbol,
          params: Privy::SparkTransferTokensRpcInputParams::OrHash,
          network: Privy::SparkNetwork::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        method_:,
        # Parameters for the Spark `transferTokens` RPC.
        params:,
        # The Spark network.
        network: nil
      )
      end

      sig do
        override.returns(
          {
            method_: Privy::SparkTransferTokensRpcInput::Method::OrSymbol,
            params: Privy::SparkTransferTokensRpcInputParams,
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
            T.all(Symbol, Privy::SparkTransferTokensRpcInput::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRANSFER_TOKENS =
          T.let(
            :transferTokens,
            Privy::SparkTransferTokensRpcInput::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::SparkTransferTokensRpcInput::Method::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
