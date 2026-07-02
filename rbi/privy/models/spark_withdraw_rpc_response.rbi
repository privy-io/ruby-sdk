# typed: strong

module Privy
  module Models
    class SparkWithdrawRpcResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::SparkWithdrawRpcResponse, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::SparkWithdrawRpcResponse::Method::TaggedSymbol) }
      attr_accessor :method_

      # A cooperative exit request from Spark to Bitcoin L1.
      sig { returns(T.nilable(Privy::SparkCoopExitRequest)) }
      attr_reader :data

      sig { params(data: Privy::SparkCoopExitRequest::OrHash).void }
      attr_writer :data

      # Response to the Spark `withdraw` RPC.
      sig do
        params(
          method_: Privy::SparkWithdrawRpcResponse::Method::OrSymbol,
          data: Privy::SparkCoopExitRequest::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        method_:,
        # A cooperative exit request from Spark to Bitcoin L1.
        data: nil
      )
      end

      sig do
        override.returns(
          {
            method_: Privy::SparkWithdrawRpcResponse::Method::TaggedSymbol,
            data: Privy::SparkCoopExitRequest
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::SparkWithdrawRpcResponse::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WITHDRAW =
          T.let(
            :withdraw,
            Privy::SparkWithdrawRpcResponse::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::SparkWithdrawRpcResponse::Method::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
