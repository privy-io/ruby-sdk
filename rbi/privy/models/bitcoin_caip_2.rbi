# typed: strong

module Privy
  module Models
    # Bitcoin CAIP-2 chain identifier (e.g.
    # "bip122:000000000019d6689c085ae165831e93").
    module BitcoinCaip2
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias { T.any(Privy::BitcoinCaip2::TaggedSymbol, String) }

      sig { override.returns(T::Array[Privy::BitcoinCaip2::Variants]) }
      def self.variants
      end

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::BitcoinCaip2) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      BIP122_MAINNET =
        T.let(:"bip122:mainnet", Privy::BitcoinCaip2::TaggedSymbol)
    end
  end
end
