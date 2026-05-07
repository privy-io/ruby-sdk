# typed: strong

module Privy
  module Models
    class EthereumSign7702AuthorizationRpcInputParams < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::EthereumSign7702AuthorizationRpcInputParams,
            Privy::Internal::AnyHash
          )
        end

      # A quantity value that can be either a hex string starting with '0x' or a
      # non-negative integer.
      sig { returns(Privy::Quantity::Variants) }
      attr_accessor :chain_id

      sig { returns(String) }
      attr_accessor :contract

      sig do
        returns(
          T.nilable(
            Privy::EthereumSign7702AuthorizationRpcInputParams::Executor::OrSymbol
          )
        )
      end
      attr_reader :executor

      sig do
        params(
          executor:
            Privy::EthereumSign7702AuthorizationRpcInputParams::Executor::OrSymbol
        ).void
      end
      attr_writer :executor

      # A quantity value that can be either a hex string starting with '0x' or a
      # non-negative integer.
      sig { returns(T.nilable(Privy::Quantity::Variants)) }
      attr_reader :nonce

      sig { params(nonce: Privy::Quantity::Variants).void }
      attr_writer :nonce

      # Parameters for the EVM `eth_sign7702Authorization` RPC.
      sig do
        params(
          chain_id: Privy::Quantity::Variants,
          contract: String,
          executor:
            Privy::EthereumSign7702AuthorizationRpcInputParams::Executor::OrSymbol,
          nonce: Privy::Quantity::Variants
        ).returns(T.attached_class)
      end
      def self.new(
        # A quantity value that can be either a hex string starting with '0x' or a
        # non-negative integer.
        chain_id:,
        contract:,
        executor: nil,
        # A quantity value that can be either a hex string starting with '0x' or a
        # non-negative integer.
        nonce: nil
      )
      end

      sig do
        override.returns(
          {
            chain_id: Privy::Quantity::Variants,
            contract: String,
            executor:
              Privy::EthereumSign7702AuthorizationRpcInputParams::Executor::OrSymbol,
            nonce: Privy::Quantity::Variants
          }
        )
      end
      def to_hash
      end

      module Executor
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Privy::EthereumSign7702AuthorizationRpcInputParams::Executor
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SELF =
          T.let(
            :self,
            Privy::EthereumSign7702AuthorizationRpcInputParams::Executor::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::EthereumSign7702AuthorizationRpcInputParams::Executor::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
