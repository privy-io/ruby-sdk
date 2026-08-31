# typed: strong

module Privy
  module Models
    class AptosSignTransactionRpcInputParams < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::AptosSignTransactionRpcInputParams,
            Privy::Internal::AnyHash
          )
        end

      # A non-empty, 0x-prefixed, even-length BCS hex string.
      sig { returns(String) }
      attr_accessor :transaction

      # Parameters for the Aptos `aptos_signTransaction` RPC.
      sig { params(transaction: String).returns(T.attached_class) }
      def self.new(
        # A non-empty, 0x-prefixed, even-length BCS hex string.
        transaction:
      )
      end

      sig { override.returns({ transaction: String }) }
      def to_hash
      end
    end
  end
end
