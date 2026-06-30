# typed: strong

module Privy
  module Models
    # The type of cryptographic signature to produce. Use "ecdsa" for standard ECDSA
    # signatures, or "erc1271" for ERC-1271 compliant signatures for smart account
    # wallets.
    module SignatureType
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::SignatureType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ECDSA = T.let(:ecdsa, Privy::SignatureType::TaggedSymbol)
      ERC1271 = T.let(:erc1271, Privy::SignatureType::TaggedSymbol)

      sig { override.returns(T::Array[Privy::SignatureType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
