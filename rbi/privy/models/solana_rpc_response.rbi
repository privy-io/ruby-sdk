# typed: strong

module Privy
  module Models
    # Response body for Solana wallet RPC operations, discriminated by method.
    module SolanaRpcResponse
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::SolanaSignMessageRpcResponse,
            Privy::SolanaSignTransactionRpcResponse,
            Privy::SolanaSignAndSendTransactionRpcResponse
          )
        end

      sig { override.returns(T::Array[Privy::SolanaRpcResponse::Variants]) }
      def self.variants
      end
    end
  end
end
