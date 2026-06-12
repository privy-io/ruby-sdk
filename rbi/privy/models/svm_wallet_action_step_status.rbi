# typed: strong

module Privy
  module Models
    # Status of an SVM step in a wallet action.
    module SvmWalletActionStepStatus
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::SvmWalletActionStepStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PREPARING =
        T.let(:preparing, Privy::SvmWalletActionStepStatus::TaggedSymbol)
      QUEUED = T.let(:queued, Privy::SvmWalletActionStepStatus::TaggedSymbol)
      PENDING = T.let(:pending, Privy::SvmWalletActionStepStatus::TaggedSymbol)
      CONFIRMED =
        T.let(:confirmed, Privy::SvmWalletActionStepStatus::TaggedSymbol)
      REJECTED =
        T.let(:rejected, Privy::SvmWalletActionStepStatus::TaggedSymbol)
      REVERTED =
        T.let(:reverted, Privy::SvmWalletActionStepStatus::TaggedSymbol)
      FAILED = T.let(:failed, Privy::SvmWalletActionStepStatus::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Privy::SvmWalletActionStepStatus::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
