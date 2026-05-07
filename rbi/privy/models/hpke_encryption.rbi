# typed: strong

module Privy
  module Models
    # The encryption type of the wallet to import. Currently only supports `HPKE`.
    module HpkeEncryption
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::HpkeEncryption) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      HPKE = T.let(:HPKE, Privy::HpkeEncryption::TaggedSymbol)

      sig { override.returns(T::Array[Privy::HpkeEncryption::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
