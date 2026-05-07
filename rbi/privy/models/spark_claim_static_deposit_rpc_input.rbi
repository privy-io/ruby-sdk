# typed: strong

module Privy
  module Models
    class SparkClaimStaticDepositRpcInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::SparkClaimStaticDepositRpcInput,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(Privy::SparkClaimStaticDepositRpcInput::Method::OrSymbol) }
      attr_accessor :method_

      # Parameters for the Spark `claimStaticDeposit` RPC.
      sig { returns(Privy::SparkClaimStaticDepositRpcInputParams) }
      attr_reader :params

      sig do
        params(
          params: Privy::SparkClaimStaticDepositRpcInputParams::OrHash
        ).void
      end
      attr_writer :params

      # The Spark network.
      sig { returns(T.nilable(Privy::SparkNetwork::OrSymbol)) }
      attr_reader :network

      sig { params(network: Privy::SparkNetwork::OrSymbol).void }
      attr_writer :network

      # Claims a static deposit into the Spark wallet.
      sig do
        params(
          method_: Privy::SparkClaimStaticDepositRpcInput::Method::OrSymbol,
          params: Privy::SparkClaimStaticDepositRpcInputParams::OrHash,
          network: Privy::SparkNetwork::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        method_:,
        # Parameters for the Spark `claimStaticDeposit` RPC.
        params:,
        # The Spark network.
        network: nil
      )
      end

      sig do
        override.returns(
          {
            method_: Privy::SparkClaimStaticDepositRpcInput::Method::OrSymbol,
            params: Privy::SparkClaimStaticDepositRpcInputParams,
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
            T.all(Symbol, Privy::SparkClaimStaticDepositRpcInput::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CLAIM_STATIC_DEPOSIT =
          T.let(
            :claimStaticDeposit,
            Privy::SparkClaimStaticDepositRpcInput::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::SparkClaimStaticDepositRpcInput::Method::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
