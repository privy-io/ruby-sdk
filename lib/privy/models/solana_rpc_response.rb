# frozen_string_literal: true

module Privy
  module Models
    # Response body for Solana wallet RPC operations, discriminated by method.
    module SolanaRpcResponse
      extend Privy::Internal::Type::Union

      discriminator :method

      # Response to the SVM `signMessage` RPC.
      variant :signMessage, -> { Privy::SolanaSignMessageRpcResponse }

      # Response to the SVM `signTransaction` RPC.
      variant :signTransaction, -> { Privy::SolanaSignTransactionRpcResponse }

      # Response to the SVM `signAndSendTransaction` RPC.
      variant :signAndSendTransaction, -> { Privy::SolanaSignAndSendTransactionRpcResponse }

      # @!method self.variants
      #   @return [Array(Privy::Models::SolanaSignMessageRpcResponse, Privy::Models::SolanaSignTransactionRpcResponse, Privy::Models::SolanaSignAndSendTransactionRpcResponse)]
    end
  end
end
