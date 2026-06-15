# typed: strong

module Privy
  module Models
    # Response body for Tron wallet RPC operations, discriminated by method.
    module TronRpcResponse
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::TronSignTransactionRpcResponse,
            Privy::TronSendTransactionRpcResponse
          )
        end

      sig { override.returns(T::Array[Privy::TronRpcResponse::Variants]) }
      def self.variants
      end
    end
  end
end
