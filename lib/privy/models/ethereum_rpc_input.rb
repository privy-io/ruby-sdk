# frozen_string_literal: true

module Privy
  module Models
    # Request body for Ethereum wallet RPC operations, discriminated by method.
    module EthereumRpcInput
      extend Privy::Internal::Type::Union

      discriminator :method

      # Executes the EVM `eth_signTransaction` RPC to sign a transaction.
      variant :eth_signTransaction, -> { Privy::EthereumSignTransactionRpcInput }

      # Executes the EVM `eth_sendTransaction` RPC to sign and broadcast a transaction.
      variant :eth_sendTransaction, -> { Privy::EthereumSendTransactionRpcInput }

      # Executes the EVM `personal_sign` RPC (EIP-191) to sign a message.
      variant :personal_sign, -> { Privy::EthereumPersonalSignRpcInput }

      # Executes the EVM `eth_signTypedData_v4` RPC (EIP-712) to sign a typed data object.
      variant :eth_signTypedData_v4, -> { Privy::EthereumSignTypedDataRpcInput }

      # Signs a raw hash on the secp256k1 curve.
      variant :secp256k1_sign, -> { Privy::EthereumSecp256k1SignRpcInput }

      # Signs an EIP-7702 authorization.
      variant :eth_sign7702Authorization, -> { Privy::EthereumSign7702AuthorizationRpcInput }

      # Executes an RPC method to hash and sign a UserOperation.
      variant :eth_signUserOperation, -> { Privy::EthereumSignUserOperationRpcInput }

      # Executes the `wallet_sendCalls` RPC (EIP-5792) to batch multiple calls into a single atomic transaction.
      variant :wallet_sendCalls, -> { Privy::EthereumSendCallsRpcInput }

      # @!method self.variants
      #   @return [Array(Privy::Models::EthereumSignTransactionRpcInput, Privy::Models::EthereumSendTransactionRpcInput, Privy::Models::EthereumPersonalSignRpcInput, Privy::Models::EthereumSignTypedDataRpcInput, Privy::Models::EthereumSecp256k1SignRpcInput, Privy::Models::EthereumSign7702AuthorizationRpcInput, Privy::Models::EthereumSignUserOperationRpcInput, Privy::Models::EthereumSendCallsRpcInput)]
    end
  end
end
