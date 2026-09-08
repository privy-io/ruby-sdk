# typed: strong

module Privy
  module Models
    # Tron CAIP-2 chain identifier. Supported values: "tron:mainnet", "tron:nile".
    module TronCaip2
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::TronCaip2) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      TRON_MAINNET = T.let(:"tron:mainnet", Privy::TronCaip2::TaggedSymbol)
      TRON_NILE = T.let(:"tron:nile", Privy::TronCaip2::TaggedSymbol)

      sig { override.returns(T::Array[Privy::TronCaip2::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
