# typed: strong

module Privy
  module Models
    # KYC/KYB provider identifier.
    module KyxProvider
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::KyxProvider) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      BRIDGE = T.let(:bridge, Privy::KyxProvider::TaggedSymbol)

      sig { override.returns(T::Array[Privy::KyxProvider::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
