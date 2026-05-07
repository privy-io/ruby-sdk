# typed: strong

module Privy
  module Models
    class RawSignHashParams < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::RawSignHashParams, Privy::Internal::AnyHash)
        end

      # A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
      # bytes).
      sig { returns(String) }
      attr_accessor :hash_

      # Parameters for signing a pre-computed hash with the `raw_sign` RPC.
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
