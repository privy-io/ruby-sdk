# typed: strong

module Privy
  module Models
    class SparkGetStaticDepositAddressRpcResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::SparkGetStaticDepositAddressRpcResponse,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(
          Privy::SparkGetStaticDepositAddressRpcResponse::Method::TaggedSymbol
        )
      end
      attr_accessor :method_

      # Data returned by the Spark `getStaticDepositAddress` RPC.
      sig do
        returns(T.nilable(Privy::SparkGetStaticDepositAddressRpcResponseData))
      end
      attr_reader :data

      sig do
        params(
          data: Privy::SparkGetStaticDepositAddressRpcResponseData::OrHash
        ).void
      end
      attr_writer :data

      # Response to the Spark `getStaticDepositAddress` RPC.
      sig do
        params(
          method_:
            Privy::SparkGetStaticDepositAddressRpcResponse::Method::OrSymbol,
          data: Privy::SparkGetStaticDepositAddressRpcResponseData::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        method_:,
        # Data returned by the Spark `getStaticDepositAddress` RPC.
        data: nil
      )
      end

      sig do
        override.returns(
          {
            method_:
              Privy::SparkGetStaticDepositAddressRpcResponse::Method::TaggedSymbol,
            data: Privy::SparkGetStaticDepositAddressRpcResponseData
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
              Privy::SparkGetStaticDepositAddressRpcResponse::Method
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        GET_STATIC_DEPOSIT_ADDRESS =
          T.let(
            :getStaticDepositAddress,
            Privy::SparkGetStaticDepositAddressRpcResponse::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::SparkGetStaticDepositAddressRpcResponse::Method::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
