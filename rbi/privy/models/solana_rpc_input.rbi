# typed: strong

module Privy
  module Models
    # Request body for Solana wallet RPC operations, discriminated by method.
    module SolanaRpcInput
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::SolanaSignTransactionRpcInput,
            Privy::SolanaSignAndSendTransactionRpcInput,
            Privy::SolanaSignMessageRpcInput
          )
        end

      sig { override.returns(T::Array[Privy::SolanaRpcInput::Variants]) }
      def self.variants
      end
    end
  end
end
