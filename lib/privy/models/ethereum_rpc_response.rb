# frozen_string_literal: true

module Privy
  module Models
    # Response body for Ethereum wallet RPC operations, discriminated by method.
    module EthereumRpcResponse
      extend Privy::Internal::Type::Union

      discriminator :method

      # Response to the EVM `personal_sign` RPC.
      variant :personal_sign, -> { Privy::EthereumPersonalSignRpcResponse }

      # Response to the EVM `eth_signTypedData_v4` RPC.
      variant :eth_signTypedData_v4, -> { Privy::EthereumSignTypedDataRpcResponse }

      # Response to the EVM `eth_signTransaction` RPC.
      variant :eth_signTransaction, -> { Privy::EthereumSignTransactionRpcResponse }

      # Response to the EVM `eth_sendTransaction` RPC.
      variant :eth_sendTransaction, -> { Privy::EthereumSendTransactionRpcResponse }

      # Response to the EVM `eth_signUserOperation` RPC.
      variant :eth_signUserOperation, -> { Privy::EthereumSignUserOperationRpcResponse }

      # Response to the EVM `eth_sign7702Authorization` RPC.
      variant :eth_sign7702Authorization, -> { Privy::EthereumSign7702AuthorizationRpcResponse }

      # Response to the EVM `secp256k1_sign` RPC.
      variant :secp256k1_sign, -> { Privy::EthereumSecp256k1SignRpcResponse }

      # Response to the `wallet_sendCalls` RPC.
      variant :wallet_sendCalls, -> { Privy::EthereumSendCallsRpcResponse }

      # @!method self.variants
      #   @return [Array(Privy::Models::EthereumPersonalSignRpcResponse, Privy::Models::EthereumSignTypedDataRpcResponse, Privy::Models::EthereumSignTransactionRpcResponse, Privy::Models::EthereumSendTransactionRpcResponse, Privy::Models::EthereumSignUserOperationRpcResponse, Privy::Models::EthereumSign7702AuthorizationRpcResponse, Privy::Models::EthereumSecp256k1SignRpcResponse, Privy::Models::EthereumSendCallsRpcResponse)]
    end
  end
end
