# typed: strong

module Privy
  module Models
    class EthereumSign7702AuthorizationRpcResponseData < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::EthereumSign7702AuthorizationRpcResponseData,
            Privy::Internal::AnyHash
          )
        end

      # A signed EIP-7702 authorization that delegates code execution to a contract
      # address.
      sig { returns(Privy::EthereumSign7702Authorization) }
      attr_reader :authorization

      sig do
        params(authorization: Privy::EthereumSign7702Authorization::OrHash).void
      end
      attr_writer :authorization

      # Data returned by the EVM `eth_sign7702Authorization` RPC.
      sig do
        params(
          authorization: Privy::EthereumSign7702Authorization::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A signed EIP-7702 authorization that delegates code execution to a contract
        # address.
        authorization:
      )
      end

      sig do
        override.returns(
          { authorization: Privy::EthereumSign7702Authorization }
        )
      end
      def to_hash
      end
    end
  end
end
