# typed: strong

module Privy
  module Models
    # The wallet chain types that offer first class support.
    module FirstClassChainType
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::FirstClassChainType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ETHEREUM = T.let(:ethereum, Privy::FirstClassChainType::TaggedSymbol)
      SOLANA = T.let(:solana, Privy::FirstClassChainType::TaggedSymbol)

      sig do
        override.returns(T::Array[Privy::FirstClassChainType::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
