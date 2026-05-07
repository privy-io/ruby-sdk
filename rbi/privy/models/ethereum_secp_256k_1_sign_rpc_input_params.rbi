# typed: strong

module Privy
  module Models
    class EthereumSecp256k1SignRpcInputParams < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::EthereumSecp256k1SignRpcInputParams,
            Privy::Internal::AnyHash
          )
        end

      # A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
      # bytes).
      sig { returns(String) }
      attr_accessor :hash_

      # Parameters for the EVM `secp256k1_sign` RPC.
      sig { params(hash_: String).returns(T.attached_class) }
      def self.new(
        # A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
        # bytes).
        hash_:
      )
      end

      sig { override.returns({ hash_: String }) }
      def to_hash
      end
    end
  end
end
