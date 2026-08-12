# typed: strong

module Privy
  module Models
    # Why a lost or stolen card is being canceled.
    module CardIssuingCancellationReason
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::CardIssuingCancellationReason) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      LOST = T.let(:lost, Privy::CardIssuingCancellationReason::TaggedSymbol)
      STOLEN =
        T.let(:stolen, Privy::CardIssuingCancellationReason::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Privy::CardIssuingCancellationReason::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
