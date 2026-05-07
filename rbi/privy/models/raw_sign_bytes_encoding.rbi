# typed: strong

module Privy
  module Models
    # Encoding scheme for bytes in the `raw_sign` RPC.
    module RawSignBytesEncoding
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::RawSignBytesEncoding) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      UTF_8 = T.let(:"utf-8", Privy::RawSignBytesEncoding::TaggedSymbol)
      HEX = T.let(:hex, Privy::RawSignBytesEncoding::TaggedSymbol)
      BASE64 = T.let(:base64, Privy::RawSignBytesEncoding::TaggedSymbol)

      sig do
        override.returns(T::Array[Privy::RawSignBytesEncoding::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
