# typed: strong

module Privy
  module Models
    # The cryptographic curve type used by the wallet.
    module CurveType
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::CurveType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      SECP256K1 = T.let(:secp256k1, Privy::CurveType::TaggedSymbol)
      ED25519 = T.let(:ed25519, Privy::CurveType::TaggedSymbol)
      STARKNET = T.let(:starknet, Privy::CurveType::TaggedSymbol)

      sig { override.returns(T::Array[Privy::CurveType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
