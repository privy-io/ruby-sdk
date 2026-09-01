# typed: strong

module Privy
  module Models
    class NearSignTransactionRpcRequestBodyParams < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::NearSignTransactionRpcRequestBodyParams,
            Privy::Internal::AnyHash
          )
        end

      # A non-empty, base64-encoded Borsh NEAR Transaction.
      sig { returns(String) }
      attr_accessor :transaction

      # Parameters for the NEAR `near_signTransaction` RPC.
      sig { params(transaction: String).returns(T.attached_class) }
      def self.new(
        # A non-empty, base64-encoded Borsh NEAR Transaction.
        transaction:
      )
      end

      sig { override.returns({ transaction: String }) }
      def to_hash
      end
    end
  end
end
