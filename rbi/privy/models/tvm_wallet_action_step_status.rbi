# typed: strong

module Privy
  module Models
    # Status of a TVM (Tron) step in a wallet action.
    module TvmWalletActionStepStatus
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::TvmWalletActionStepStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PREPARING =
        T.let(:preparing, Privy::TvmWalletActionStepStatus::TaggedSymbol)
      QUEUED = T.let(:queued, Privy::TvmWalletActionStepStatus::TaggedSymbol)
      PENDING = T.let(:pending, Privy::TvmWalletActionStepStatus::TaggedSymbol)
      CONFIRMED =
        T.let(:confirmed, Privy::TvmWalletActionStepStatus::TaggedSymbol)
      REJECTED =
        T.let(:rejected, Privy::TvmWalletActionStepStatus::TaggedSymbol)
      REVERTED =
        T.let(:reverted, Privy::TvmWalletActionStepStatus::TaggedSymbol)
      FAILED = T.let(:failed, Privy::TvmWalletActionStepStatus::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Privy::TvmWalletActionStepStatus::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
