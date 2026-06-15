# frozen_string_literal: true

module Privy
  module Models
    # Request body for Tron wallet RPC operations, discriminated by method.
    module TronRpcInput
      extend Privy::Internal::Type::Union

      discriminator :method

      # Executes the Tron `tron_signTransaction` RPC to sign a transaction. The caller is responsible for broadcasting.
      variant :tron_signTransaction, -> { Privy::TronSignTransactionRpcInput }

      # Executes the Tron `tron_sendTransaction` RPC to sign and broadcast a transaction.
      variant :tron_sendTransaction, -> { Privy::TronSendTransactionRpcInput }

      # @!method self.variants
      #   @return [Array(Privy::Models::TronSignTransactionRpcInput, Privy::Models::TronSendTransactionRpcInput)]
    end
  end
end
