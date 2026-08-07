# typed: strong

module Privy
  module Models
    # Status for a card issuing transaction.
    module CardIssuingTransactionStatus
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::CardIssuingTransactionStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PENDING =
        T.let(:pending, Privy::CardIssuingTransactionStatus::TaggedSymbol)
      POSTED = T.let(:posted, Privy::CardIssuingTransactionStatus::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Privy::CardIssuingTransactionStatus::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
