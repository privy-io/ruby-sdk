# typed: strong

module Privy
  module Models
    # "accepted" if the network has acknowledged the transaction, "rejected" if the
    # network refused it, "skipped" if dry_run was set. Not an onchain confirmation.
    module SwapSubmissionStatus
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::SwapSubmissionStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ACCEPTED = T.let(:accepted, Privy::SwapSubmissionStatus::TaggedSymbol)
      REJECTED = T.let(:rejected, Privy::SwapSubmissionStatus::TaggedSymbol)
      SKIPPED = T.let(:skipped, Privy::SwapSubmissionStatus::TaggedSymbol)

      sig do
        override.returns(T::Array[Privy::SwapSubmissionStatus::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
