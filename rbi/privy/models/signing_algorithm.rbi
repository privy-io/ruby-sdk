# typed: strong

module Privy
  module Models
    # The signing algorithm used by the wallet.
    module SigningAlgorithm
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::SigningAlgorithm) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ECDSA = T.let(:ECDSA, Privy::SigningAlgorithm::TaggedSymbol)
      ED_DSA = T.let(:EdDSA, Privy::SigningAlgorithm::TaggedSymbol)
      SCHNORR = T.let(:Schnorr, Privy::SigningAlgorithm::TaggedSymbol)

      sig { override.returns(T::Array[Privy::SigningAlgorithm::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
