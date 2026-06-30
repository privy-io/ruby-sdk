# typed: strong

module Privy
  module Models
    # Lifecycle status of a portfolio transaction.
    module KrakenEmbedTransactionStatus
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::KrakenEmbedTransactionStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      UNSPECIFIED =
        T.let(:unspecified, Privy::KrakenEmbedTransactionStatus::TaggedSymbol)
      IN_PROGRESS =
        T.let(:in_progress, Privy::KrakenEmbedTransactionStatus::TaggedSymbol)
      SUCCESSFUL =
        T.let(:successful, Privy::KrakenEmbedTransactionStatus::TaggedSymbol)
      FAILED = T.let(:failed, Privy::KrakenEmbedTransactionStatus::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Privy::KrakenEmbedTransactionStatus::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
