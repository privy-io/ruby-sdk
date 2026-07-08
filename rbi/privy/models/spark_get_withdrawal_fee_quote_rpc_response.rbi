# typed: strong

module Privy
  module Models
    class SparkGetWithdrawalFeeQuoteRpcResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::SparkGetWithdrawalFeeQuoteRpcResponse,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(
          Privy::SparkGetWithdrawalFeeQuoteRpcResponse::Method::TaggedSymbol
        )
      end
      attr_accessor :method_

      # A fee quote for a cooperative exit from Spark to Bitcoin L1.
      sig { returns(T.nilable(Privy::SparkCoopExitFeeQuote)) }
      attr_reader :data

      sig { params(data: Privy::SparkCoopExitFeeQuote::OrHash).void }
      attr_writer :data

      # Response to the Spark `getWithdrawalFeeQuote` RPC.
      sig do
        params(
          method_:
            Privy::SparkGetWithdrawalFeeQuoteRpcResponse::Method::OrSymbol,
          data: Privy::SparkCoopExitFeeQuote::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        method_:,
        # A fee quote for a cooperative exit from Spark to Bitcoin L1.
        data: nil
      )
      end

      sig do
        override.returns(
          {
            method_:
              Privy::SparkGetWithdrawalFeeQuoteRpcResponse::Method::TaggedSymbol,
            data: Privy::SparkCoopExitFeeQuote
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::SparkGetWithdrawalFeeQuoteRpcResponse::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        GET_WITHDRAWAL_FEE_QUOTE =
          T.let(
            :getWithdrawalFeeQuote,
            Privy::SparkGetWithdrawalFeeQuoteRpcResponse::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::SparkGetWithdrawalFeeQuoteRpcResponse::Method::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
