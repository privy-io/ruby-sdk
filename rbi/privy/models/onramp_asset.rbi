# typed: strong

module Privy
  module Models
    # Supported crypto assets for onramp and offramp.
    module OnrampAsset
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::OnrampAsset) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      USDC = T.let(:usdc, Privy::OnrampAsset::TaggedSymbol)

      sig { override.returns(T::Array[Privy::OnrampAsset::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
