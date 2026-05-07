# typed: strong

module Privy
  module Models
    class EthereumSignUserOperationRpcInputParams < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::EthereumSignUserOperationRpcInputParams,
            Privy::Internal::AnyHash
          )
        end

      # A quantity value that can be either a hex string starting with '0x' or a
      # non-negative integer.
      sig { returns(Privy::Quantity::Variants) }
      attr_accessor :chain_id

      sig { returns(String) }
      attr_accessor :contract

      # An ERC-4337 user operation.
      sig { returns(Privy::UserOperationInput) }
      attr_reader :user_operation

      sig { params(user_operation: Privy::UserOperationInput::OrHash).void }
      attr_writer :user_operation

      # Parameters for the EVM `eth_signUserOperation` RPC.
      sig do
        params(
          chain_id: Privy::Quantity::Variants,
          contract: String,
          user_operation: Privy::UserOperationInput::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A quantity value that can be either a hex string starting with '0x' or a
        # non-negative integer.
        chain_id:,
        contract:,
        # An ERC-4337 user operation.
        user_operation:
      )
      end

      sig do
        override.returns(
          {
            chain_id: Privy::Quantity::Variants,
            contract: String,
            user_operation: Privy::UserOperationInput
          }
        )
      end
      def to_hash
      end
    end
  end
end
