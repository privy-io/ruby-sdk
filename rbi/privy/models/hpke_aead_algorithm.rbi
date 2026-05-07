# typed: strong

module Privy
  module Models
    # The AEAD algorithm used for HPKE encryption.
    module HpkeAeadAlgorithm
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::HpkeAeadAlgorithm) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      CHACHA20_POLY1305 =
        T.let(:CHACHA20_POLY1305, Privy::HpkeAeadAlgorithm::TaggedSymbol)
      AES_GCM256 = T.let(:AES_GCM256, Privy::HpkeAeadAlgorithm::TaggedSymbol)

      sig { override.returns(T::Array[Privy::HpkeAeadAlgorithm::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
