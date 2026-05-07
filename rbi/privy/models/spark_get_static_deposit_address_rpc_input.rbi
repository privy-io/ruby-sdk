# typed: strong

module Privy
  module Models
    class SparkGetStaticDepositAddressRpcInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::SparkGetStaticDepositAddressRpcInput,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(Privy::SparkGetStaticDepositAddressRpcInput::Method::OrSymbol)
      end
      attr_accessor :method_

      # The Spark network.
      sig { returns(T.nilable(Privy::SparkNetwork::OrSymbol)) }
      attr_reader :network

      sig { params(network: Privy::SparkNetwork::OrSymbol).void }
      attr_writer :network

      # Gets a static deposit address for the Spark wallet.
      sig do
        params(
          method_:
            Privy::SparkGetStaticDepositAddressRpcInput::Method::OrSymbol,
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
            method_:
              Privy::SparkGetStaticDepositAddressRpcInput::Method::OrSymbol,
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
            T.all(Symbol, Privy::SparkGetStaticDepositAddressRpcInput::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        GET_STATIC_DEPOSIT_ADDRESS =
          T.let(
            :getStaticDepositAddress,
            Privy::SparkGetStaticDepositAddressRpcInput::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::SparkGetStaticDepositAddressRpcInput::Method::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
