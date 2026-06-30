# typed: strong

module Privy
  module Models
    # When set to true, returns balances from testnet chains instead of mainnets.
    module ChainTestnetMode
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::ChainTestnetMode) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      TRUE = T.let(:true, Privy::ChainTestnetMode::TaggedSymbol)
      FALSE = T.let(:false, Privy::ChainTestnetMode::TaggedSymbol)

      sig { override.returns(T::Array[Privy::ChainTestnetMode::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
