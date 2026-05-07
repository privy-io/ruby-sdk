# typed: strong

module Privy
  module Models
    class SparkGetBalanceRpcResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::SparkGetBalanceRpcResponse, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::SparkGetBalanceRpcResponse::Method::TaggedSymbol) }
      attr_accessor :method_

      # The balance of a Spark wallet.
      sig { returns(T.nilable(Privy::SparkBalance)) }
      attr_reader :data

      sig { params(data: Privy::SparkBalance::OrHash).void }
      attr_writer :data

      # Response to the Spark `getBalance` RPC.
      sig do
        params(
          method_: Privy::SparkGetBalanceRpcResponse::Method::OrSymbol,
          data: Privy::SparkBalance::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        method_:,
        # The balance of a Spark wallet.
        data: nil
      )
      end

      sig do
        override.returns(
          {
            method_: Privy::SparkGetBalanceRpcResponse::Method::TaggedSymbol,
            data: Privy::SparkBalance
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::SparkGetBalanceRpcResponse::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        GET_BALANCE =
          T.let(
            :getBalance,
            Privy::SparkGetBalanceRpcResponse::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::SparkGetBalanceRpcResponse::Method::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
