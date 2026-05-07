# typed: strong

module Privy
  module Models
    class SparkSignMessageWithIdentityKeyRpcInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::SparkSignMessageWithIdentityKeyRpcInput,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(
          Privy::SparkSignMessageWithIdentityKeyRpcInput::Method::OrSymbol
        )
      end
      attr_accessor :method_

      # Parameters for the Spark `signMessageWithIdentityKey` RPC.
      sig { returns(Privy::SparkSignMessageWithIdentityKeyRpcInputParams) }
      attr_reader :params

      sig do
        params(
          params: Privy::SparkSignMessageWithIdentityKeyRpcInputParams::OrHash
        ).void
      end
      attr_writer :params

      # The Spark network.
      sig { returns(T.nilable(Privy::SparkNetwork::OrSymbol)) }
      attr_reader :network

      sig { params(network: Privy::SparkNetwork::OrSymbol).void }
      attr_writer :network

      # Signs a message with the Spark identity key.
      sig do
        params(
          method_:
            Privy::SparkSignMessageWithIdentityKeyRpcInput::Method::OrSymbol,
          params: Privy::SparkSignMessageWithIdentityKeyRpcInputParams::OrHash,
          network: Privy::SparkNetwork::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        method_:,
        # Parameters for the Spark `signMessageWithIdentityKey` RPC.
        params:,
        # The Spark network.
        network: nil
      )
      end

      sig do
        override.returns(
          {
            method_:
              Privy::SparkSignMessageWithIdentityKeyRpcInput::Method::OrSymbol,
            params: Privy::SparkSignMessageWithIdentityKeyRpcInputParams,
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
              Privy::SparkSignMessageWithIdentityKeyRpcInput::Method
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SIGN_MESSAGE_WITH_IDENTITY_KEY =
          T.let(
            :signMessageWithIdentityKey,
            Privy::SparkSignMessageWithIdentityKeyRpcInput::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::SparkSignMessageWithIdentityKeyRpcInput::Method::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
