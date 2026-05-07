# typed: strong

module Privy
  module Models
    class EthereumSignTypedDataRpcInputParams < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::EthereumSignTypedDataRpcInputParams,
            Privy::Internal::AnyHash
          )
        end

      # EIP-712 typed data object.
      sig { returns(Privy::EthereumTypedDataInput) }
      attr_reader :typed_data

      sig { params(typed_data: Privy::EthereumTypedDataInput::OrHash).void }
      attr_writer :typed_data

      # Parameters for the EVM `eth_signTypedData_v4` RPC.
      sig do
        params(typed_data: Privy::EthereumTypedDataInput::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(
        # EIP-712 typed data object.
        typed_data:
      )
      end

      sig { override.returns({ typed_data: Privy::EthereumTypedDataInput }) }
      def to_hash
      end
    end
  end
end
