# typed: strong

module Privy
  module Models
    # Request body for Ethereum wallet RPC operations, discriminated by method.
    module EthereumRpcInput
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::EthereumSignTransactionRpcInput,
            Privy::EthereumSendTransactionRpcInput,
            Privy::EthereumPersonalSignRpcInput,
            Privy::EthereumSignTypedDataRpcInput,
            Privy::EthereumSecp256k1SignRpcInput,
            Privy::EthereumSign7702AuthorizationRpcInput,
            Privy::EthereumSignUserOperationRpcInput,
            Privy::EthereumSendCallsRpcInput
          )
        end

      sig { override.returns(T::Array[Privy::EthereumRpcInput::Variants]) }
      def self.variants
      end
    end
  end
end
