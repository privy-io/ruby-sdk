# typed: strong

module Privy
  module Models
    # Business relationship between the payer and the SWIFT account owner.
    module ExternalFiatAccountSwiftCategory
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::ExternalFiatAccountSwiftCategory) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      CLIENT =
        T.let(:client, Privy::ExternalFiatAccountSwiftCategory::TaggedSymbol)
      PARENT_COMPANY =
        T.let(
          :parent_company,
          Privy::ExternalFiatAccountSwiftCategory::TaggedSymbol
        )
      SUBSIDIARY =
        T.let(
          :subsidiary,
          Privy::ExternalFiatAccountSwiftCategory::TaggedSymbol
        )
      SUPPLIER =
        T.let(:supplier, Privy::ExternalFiatAccountSwiftCategory::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Privy::ExternalFiatAccountSwiftCategory::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
