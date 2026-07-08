# typed: strong

module Privy
  module Models
    class SparkGetWithdrawalFeeQuoteRpcInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::SparkGetWithdrawalFeeQuoteRpcInput,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(Privy::SparkGetWithdrawalFeeQuoteRpcInput::Method::OrSymbol)
      end
      attr_accessor :method_

      # Parameters for the Spark `getWithdrawalFeeQuote` RPC.
      sig { returns(Privy::SparkGetWithdrawalFeeQuoteRpcInputParams) }
      attr_reader :params

      sig do
        params(
          params: Privy::SparkGetWithdrawalFeeQuoteRpcInputParams::OrHash
        ).void
      end
      attr_writer :params

      # The Spark network.
      sig { returns(T.nilable(Privy::SparkNetwork::OrSymbol)) }
      attr_reader :network

      sig { params(network: Privy::SparkNetwork::OrSymbol).void }
      attr_writer :network

      # Gets a fee quote for withdrawing from Spark to a Bitcoin L1 address.
      sig do
        params(
          method_: Privy::SparkGetWithdrawalFeeQuoteRpcInput::Method::OrSymbol,
          params: Privy::SparkGetWithdrawalFeeQuoteRpcInputParams::OrHash,
          network: Privy::SparkNetwork::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        method_:,
        # Parameters for the Spark `getWithdrawalFeeQuote` RPC.
        params:,
        # The Spark network.
        network: nil
      )
      end

      sig do
        override.returns(
          {
            method_:
              Privy::SparkGetWithdrawalFeeQuoteRpcInput::Method::OrSymbol,
            params: Privy::SparkGetWithdrawalFeeQuoteRpcInputParams,
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
            T.all(Symbol, Privy::SparkGetWithdrawalFeeQuoteRpcInput::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        GET_WITHDRAWAL_FEE_QUOTE =
          T.let(
            :getWithdrawalFeeQuote,
            Privy::SparkGetWithdrawalFeeQuoteRpcInput::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::SparkGetWithdrawalFeeQuoteRpcInput::Method::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
