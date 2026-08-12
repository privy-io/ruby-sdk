# typed: strong

module Privy
  module Models
    # Lifecycle status of a card. Active unfreezes the card, inactive freezes it, and
    # canceled closes it.
    module CardIssuingCardStatus
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::CardIssuingCardStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ACTIVE = T.let(:active, Privy::CardIssuingCardStatus::TaggedSymbol)
      INACTIVE = T.let(:inactive, Privy::CardIssuingCardStatus::TaggedSymbol)
      CANCELED = T.let(:canceled, Privy::CardIssuingCardStatus::TaggedSymbol)

      sig do
        override.returns(T::Array[Privy::CardIssuingCardStatus::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
