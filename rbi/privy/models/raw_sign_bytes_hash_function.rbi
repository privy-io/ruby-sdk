# typed: strong

module Privy
  module Models
    # Hash function for bytes in the `raw_sign` RPC.
    module RawSignBytesHashFunction
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::RawSignBytesHashFunction) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      KECCAK256 =
        T.let(:keccak256, Privy::RawSignBytesHashFunction::TaggedSymbol)
      SHA256 = T.let(:sha256, Privy::RawSignBytesHashFunction::TaggedSymbol)
      BLAKE2B256 =
        T.let(:blake2b256, Privy::RawSignBytesHashFunction::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Privy::RawSignBytesHashFunction::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
