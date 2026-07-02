# typed: strong

module Privy
  module Models
    class SparkWithdrawRpcInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::SparkWithdrawRpcInput, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::SparkWithdrawRpcInput::Method::OrSymbol) }
      attr_accessor :method_

      # Parameters for the Spark `withdraw` RPC.
      sig { returns(Privy::SparkWithdrawRpcInputParams) }
      attr_reader :params

      sig { params(params: Privy::SparkWithdrawRpcInputParams::OrHash).void }
      attr_writer :params

      # The Spark network.
      sig { returns(T.nilable(Privy::SparkNetwork::OrSymbol)) }
      attr_reader :network

      sig { params(network: Privy::SparkNetwork::OrSymbol).void }
      attr_writer :network

      # Withdraws from Spark to a Bitcoin L1 address (cooperative exit).
      sig do
        params(
          method_: Privy::SparkWithdrawRpcInput::Method::OrSymbol,
          params: Privy::SparkWithdrawRpcInputParams::OrHash,
          network: Privy::SparkNetwork::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        method_:,
        # Parameters for the Spark `withdraw` RPC.
        params:,
        # The Spark network.
        network: nil
      )
      end

      sig do
        override.returns(
          {
            method_: Privy::SparkWithdrawRpcInput::Method::OrSymbol,
            params: Privy::SparkWithdrawRpcInputParams,
            network: Privy::SparkNetwork::OrSymbol
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::SparkWithdrawRpcInput::Method) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WITHDRAW =
          T.let(:withdraw, Privy::SparkWithdrawRpcInput::Method::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::SparkWithdrawRpcInput::Method::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
