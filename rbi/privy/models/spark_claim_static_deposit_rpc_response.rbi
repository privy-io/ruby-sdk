# typed: strong

module Privy
  module Models
    class SparkClaimStaticDepositRpcResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::SparkClaimStaticDepositRpcResponse,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(Privy::SparkClaimStaticDepositRpcResponse::Method::TaggedSymbol)
      end
      attr_accessor :method_

      # Data returned by the Spark `claimStaticDeposit` RPC.
      sig { returns(T.nilable(Privy::SparkClaimStaticDepositRpcResponseData)) }
      attr_reader :data

      sig do
        params(data: Privy::SparkClaimStaticDepositRpcResponseData::OrHash).void
      end
      attr_writer :data

      # Response to the Spark `claimStaticDeposit` RPC.
      sig do
        params(
          method_: Privy::SparkClaimStaticDepositRpcResponse::Method::OrSymbol,
          data: Privy::SparkClaimStaticDepositRpcResponseData::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        method_:,
        # Data returned by the Spark `claimStaticDeposit` RPC.
        data: nil
      )
      end

      sig do
        override.returns(
          {
            method_:
              Privy::SparkClaimStaticDepositRpcResponse::Method::TaggedSymbol,
            data: Privy::SparkClaimStaticDepositRpcResponseData
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::SparkClaimStaticDepositRpcResponse::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CLAIM_STATIC_DEPOSIT =
          T.let(
            :claimStaticDeposit,
            Privy::SparkClaimStaticDepositRpcResponse::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::SparkClaimStaticDepositRpcResponse::Method::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
