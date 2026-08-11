# typed: strong

module Privy
  module Models
    # Status of a dispute for card activity.
    module CardIssuingDisputeStatus
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::CardIssuingDisputeStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      EXPIRED = T.let(:expired, Privy::CardIssuingDisputeStatus::TaggedSymbol)
      LOST = T.let(:lost, Privy::CardIssuingDisputeStatus::TaggedSymbol)
      SUBMITTED =
        T.let(:submitted, Privy::CardIssuingDisputeStatus::TaggedSymbol)
      UNSUBMITTED =
        T.let(:unsubmitted, Privy::CardIssuingDisputeStatus::TaggedSymbol)
      WON = T.let(:won, Privy::CardIssuingDisputeStatus::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Privy::CardIssuingDisputeStatus::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
