# typed: strong

module Privy
  module Models
    # Reason funds are sent to a SWIFT account, required for cross-border compliance.
    module ExternalFiatAccountSwiftPurposeOfFunds
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias do
          T.all(Symbol, Privy::ExternalFiatAccountSwiftPurposeOfFunds)
        end
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      INTRA_GROUP_TRANSFER =
        T.let(
          :intra_group_transfer,
          Privy::ExternalFiatAccountSwiftPurposeOfFunds::TaggedSymbol
        )
      INVOICE_FOR_GOODS_AND_SERVICES =
        T.let(
          :invoice_for_goods_and_services,
          Privy::ExternalFiatAccountSwiftPurposeOfFunds::TaggedSymbol
        )

      sig do
        override.returns(
          T::Array[Privy::ExternalFiatAccountSwiftPurposeOfFunds::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
