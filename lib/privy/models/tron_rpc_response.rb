# frozen_string_literal: true

module Privy
  module Models
    # Response body for Tron wallet RPC operations, discriminated by method.
    module TronRpcResponse
      extend Privy::Internal::Type::Union

      discriminator :method

      # Response to the Tron `tron_signTransaction` RPC.
      variant :tron_signTransaction, -> { Privy::TronSignTransactionRpcResponse }

      # Response to the Tron `tron_sendTransaction` RPC.
      variant :tron_sendTransaction, -> { Privy::TronSendTransactionRpcResponse }

      # @!method self.variants
      #   @return [Array(Privy::Models::TronSignTransactionRpcResponse, Privy::Models::TronSendTransactionRpcResponse)]
    end
  end
end
