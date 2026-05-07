# typed: strong

module Privy
  module Models
    class TransactionScanningRpcRequest < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TransactionScanningRpcRequest, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :method_

      sig { returns(T::Array[T.anything]) }
      attr_accessor :params

      # Raw RPC request to execute with the wallet.
      sig do
        params(method_: String, params: T::Array[T.anything]).returns(
          T.attached_class
        )
      end
      def self.new(method_:, params:)
      end

      sig do
        override.returns({ method_: String, params: T::Array[T.anything] })
      end
      def to_hash
      end
    end
  end
end
