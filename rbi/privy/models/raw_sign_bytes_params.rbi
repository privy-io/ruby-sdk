# typed: strong

module Privy
  module Models
    class RawSignBytesParams < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::RawSignBytesParams, Privy::Internal::AnyHash)
        end

      # The bytes to hash and sign.
      sig { returns(String) }
      attr_accessor :bytes

      # Encoding scheme for bytes in the `raw_sign` RPC.
      sig { returns(Privy::RawSignBytesEncoding::OrSymbol) }
      attr_accessor :encoding

      # Hash function for bytes in the `raw_sign` RPC.
      sig { returns(Privy::RawSignBytesHashFunction::OrSymbol) }
      attr_accessor :hash_function

      # Parameters for hashing and signing bytes with the `raw_sign` RPC.
      sig do
        params(
          bytes: String,
          encoding: Privy::RawSignBytesEncoding::OrSymbol,
          hash_function: Privy::RawSignBytesHashFunction::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The bytes to hash and sign.
        bytes:,
        # Encoding scheme for bytes in the `raw_sign` RPC.
        encoding:,
        # Hash function for bytes in the `raw_sign` RPC.
        hash_function:
      )
      end

      sig do
        override.returns(
          {
            bytes: String,
            encoding: Privy::RawSignBytesEncoding::OrSymbol,
            hash_function: Privy::RawSignBytesHashFunction::OrSymbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
