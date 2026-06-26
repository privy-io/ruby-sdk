# typed: strong

module Privy
  module Models
    # Status of a blockchain transaction submitted by Privy.
    module BlockchainTransactionStatus
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::BlockchainTransactionStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      BROADCASTED =
        T.let(:broadcasted, Privy::BlockchainTransactionStatus::TaggedSymbol)
      CONFIRMED =
        T.let(:confirmed, Privy::BlockchainTransactionStatus::TaggedSymbol)
      EXECUTION_REVERTED =
        T.let(
          :execution_reverted,
          Privy::BlockchainTransactionStatus::TaggedSymbol
        )
      FAILED = T.let(:failed, Privy::BlockchainTransactionStatus::TaggedSymbol)
      REPLACED =
        T.let(:replaced, Privy::BlockchainTransactionStatus::TaggedSymbol)
      FINALIZED =
        T.let(:finalized, Privy::BlockchainTransactionStatus::TaggedSymbol)
      PROVIDER_ERROR =
        T.let(:provider_error, Privy::BlockchainTransactionStatus::TaggedSymbol)
      PENDING =
        T.let(:pending, Privy::BlockchainTransactionStatus::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Privy::BlockchainTransactionStatus::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
