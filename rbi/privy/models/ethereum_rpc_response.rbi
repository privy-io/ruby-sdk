# typed: strong

module Privy
  module Models
    # Response body for Ethereum wallet RPC operations, discriminated by method.
    module EthereumRpcResponse
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::EthereumPersonalSignRpcResponse,
            Privy::EthereumSignTypedDataRpcResponse,
            Privy::EthereumSignTransactionRpcResponse,
            Privy::EthereumSendTransactionRpcResponse,
            Privy::EthereumSignUserOperationRpcResponse,
            Privy::EthereumSign7702AuthorizationRpcResponse,
            Privy::EthereumSecp256k1SignRpcResponse,
            Privy::EthereumSendCallsRpcResponse
          )
        end

      sig { override.returns(T::Array[Privy::EthereumRpcResponse::Variants]) }
      def self.variants
      end
    end
  end
end
