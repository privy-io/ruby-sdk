# typed: strong

module Privy
  module Models
    # Supported fields for SUI TransferObjects command conditions. Only 'recipient'
    # and 'amount' are supported.
    module SuiTransferObjectsCommandField
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::SuiTransferObjectsCommandField) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      RECIPIENT =
        T.let(:recipient, Privy::SuiTransferObjectsCommandField::TaggedSymbol)
      AMOUNT =
        T.let(:amount, Privy::SuiTransferObjectsCommandField::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Privy::SuiTransferObjectsCommandField::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
