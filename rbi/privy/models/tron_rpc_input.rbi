# typed: strong

module Privy
  module Models
    # Request body for Tron wallet RPC operations, discriminated by method.
    module TronRpcInput
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::TronSignTransactionRpcInput,
            Privy::TronSendTransactionRpcInput
          )
        end

      sig { override.returns(T::Array[Privy::TronRpcInput::Variants]) }
      def self.variants
      end
    end
  end
end
