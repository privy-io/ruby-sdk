# typed: strong

module Privy
  module Models
    class SparkGetBalanceRpcInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::SparkGetBalanceRpcInput, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::SparkGetBalanceRpcInput::Method::OrSymbol) }
      attr_accessor :method_

      # The Spark network.
      sig { returns(T.nilable(Privy::SparkNetwork::OrSymbol)) }
      attr_reader :network

      sig { params(network: Privy::SparkNetwork::OrSymbol).void }
      attr_writer :network

      # Gets the balance of the Spark wallet.
      sig do
        params(
          method_: Privy::SparkGetBalanceRpcInput::Method::OrSymbol,
          network: Privy::SparkNetwork::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        method_:,
        # The Spark network.
        network: nil
      )
      end

      sig do
        override.returns(
          {
            method_: Privy::SparkGetBalanceRpcInput::Method::OrSymbol,
            network: Privy::SparkNetwork::OrSymbol
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::SparkGetBalanceRpcInput::Method) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        GET_BALANCE =
          T.let(
            :getBalance,
            Privy::SparkGetBalanceRpcInput::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::SparkGetBalanceRpcInput::Method::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
