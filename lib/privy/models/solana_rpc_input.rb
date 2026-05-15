# frozen_string_literal: true

module Privy
  module Models
    # Request body for Solana wallet RPC operations, discriminated by method.
    module SolanaRpcInput
      extend Privy::Internal::Type::Union

      discriminator :method

      # Executes the SVM `signTransaction` RPC to sign a transaction.
      variant :signTransaction, -> { Privy::SolanaSignTransactionRpcInput }

      # Executes the SVM `signAndSendTransaction` RPC to sign and broadcast a transaction.
      variant :signAndSendTransaction, -> { Privy::SolanaSignAndSendTransactionRpcInput }

      # Executes the SVM `signMessage` RPC to sign a message.
      variant :signMessage, -> { Privy::SolanaSignMessageRpcInput }

      # @!method self.variants
      #   @return [Array(Privy::Models::SolanaSignTransactionRpcInput, Privy::Models::SolanaSignAndSendTransactionRpcInput, Privy::Models::SolanaSignMessageRpcInput)]
    end
  end
end
