# typed: strong

module Privy
  module Models
    # Why a card is being replaced.
    module CardIssuingReplacementReason
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::CardIssuingReplacementReason) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      LOST = T.let(:lost, Privy::CardIssuingReplacementReason::TaggedSymbol)
      STOLEN = T.let(:stolen, Privy::CardIssuingReplacementReason::TaggedSymbol)
      EXPIRED =
        T.let(:expired, Privy::CardIssuingReplacementReason::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Privy::CardIssuingReplacementReason::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
