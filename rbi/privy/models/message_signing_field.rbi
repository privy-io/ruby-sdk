# typed: strong

module Privy
  module Models
    # Supported fields for message signing conditions.
    module MessageSigningField
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::MessageSigningField) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      CONTENT = T.let(:content, Privy::MessageSigningField::TaggedSymbol)
      BYTE_LENGTH =
        T.let(:byte_length, Privy::MessageSigningField::TaggedSymbol)

      sig do
        override.returns(T::Array[Privy::MessageSigningField::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
