# typed: strong

module Privy
  module Models
    class SparkGetClaimStaticDepositQuoteRpcInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::SparkGetClaimStaticDepositQuoteRpcInput,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(
          Privy::SparkGetClaimStaticDepositQuoteRpcInput::Method::OrSymbol
        )
      end
      attr_accessor :method_

      # Parameters for the Spark `getClaimStaticDepositQuote` RPC.
      sig { returns(Privy::SparkGetClaimStaticDepositQuoteRpcInputParams) }
      attr_reader :params

      sig do
        params(
          params: Privy::SparkGetClaimStaticDepositQuoteRpcInputParams::OrHash
        ).void
      end
      attr_writer :params

      # The Spark network.
      sig { returns(T.nilable(Privy::SparkNetwork::OrSymbol)) }
      attr_reader :network

      sig { params(network: Privy::SparkNetwork::OrSymbol).void }
      attr_writer :network

      # Gets a quote for claiming a static deposit.
      sig do
        params(
          method_:
            Privy::SparkGetClaimStaticDepositQuoteRpcInput::Method::OrSymbol,
          params: Privy::SparkGetClaimStaticDepositQuoteRpcInputParams::OrHash,
          network: Privy::SparkNetwork::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        method_:,
        # Parameters for the Spark `getClaimStaticDepositQuote` RPC.
        params:,
        # The Spark network.
        network: nil
      )
      end

      sig do
        override.returns(
          {
            method_:
              Privy::SparkGetClaimStaticDepositQuoteRpcInput::Method::OrSymbol,
            params: Privy::SparkGetClaimStaticDepositQuoteRpcInputParams,
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
            T.all(
              Symbol,
              Privy::SparkGetClaimStaticDepositQuoteRpcInput::Method
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        GET_CLAIM_STATIC_DEPOSIT_QUOTE =
          T.let(
            :getClaimStaticDepositQuote,
            Privy::SparkGetClaimStaticDepositQuoteRpcInput::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::SparkGetClaimStaticDepositQuoteRpcInput::Method::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
