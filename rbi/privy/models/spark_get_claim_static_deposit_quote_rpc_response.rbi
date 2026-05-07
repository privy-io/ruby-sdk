# typed: strong

module Privy
  module Models
    class SparkGetClaimStaticDepositQuoteRpcResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::SparkGetClaimStaticDepositQuoteRpcResponse,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(
          Privy::SparkGetClaimStaticDepositQuoteRpcResponse::Method::TaggedSymbol
        )
      end
      attr_accessor :method_

      # Data returned by the Spark `getClaimStaticDepositQuote` RPC.
      sig do
        returns(
          T.nilable(Privy::SparkGetClaimStaticDepositQuoteRpcResponseData)
        )
      end
      attr_reader :data

      sig do
        params(
          data: Privy::SparkGetClaimStaticDepositQuoteRpcResponseData::OrHash
        ).void
      end
      attr_writer :data

      # Response to the Spark `getClaimStaticDepositQuote` RPC.
      sig do
        params(
          method_:
            Privy::SparkGetClaimStaticDepositQuoteRpcResponse::Method::OrSymbol,
          data: Privy::SparkGetClaimStaticDepositQuoteRpcResponseData::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        method_:,
        # Data returned by the Spark `getClaimStaticDepositQuote` RPC.
        data: nil
      )
      end

      sig do
        override.returns(
          {
            method_:
              Privy::SparkGetClaimStaticDepositQuoteRpcResponse::Method::TaggedSymbol,
            data: Privy::SparkGetClaimStaticDepositQuoteRpcResponseData
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Privy::SparkGetClaimStaticDepositQuoteRpcResponse::Method
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        GET_CLAIM_STATIC_DEPOSIT_QUOTE =
          T.let(
            :getClaimStaticDepositQuote,
            Privy::SparkGetClaimStaticDepositQuoteRpcResponse::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::SparkGetClaimStaticDepositQuoteRpcResponse::Method::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
