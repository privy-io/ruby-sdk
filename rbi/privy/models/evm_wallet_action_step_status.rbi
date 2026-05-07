# typed: strong

module Privy
  module Models
    # Status of an EVM step in a wallet action.
    module EvmWalletActionStepStatus
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::EvmWalletActionStepStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PREPARING =
        T.let(:preparing, Privy::EvmWalletActionStepStatus::TaggedSymbol)
      QUEUED = T.let(:queued, Privy::EvmWalletActionStepStatus::TaggedSymbol)
      PENDING = T.let(:pending, Privy::EvmWalletActionStepStatus::TaggedSymbol)
      RETRYING =
        T.let(:retrying, Privy::EvmWalletActionStepStatus::TaggedSymbol)
      CONFIRMED =
        T.let(:confirmed, Privy::EvmWalletActionStepStatus::TaggedSymbol)
      REJECTED =
        T.let(:rejected, Privy::EvmWalletActionStepStatus::TaggedSymbol)
      REVERTED =
        T.let(:reverted, Privy::EvmWalletActionStepStatus::TaggedSymbol)
      REPLACED =
        T.let(:replaced, Privy::EvmWalletActionStepStatus::TaggedSymbol)
      ABANDONED =
        T.let(:abandoned, Privy::EvmWalletActionStepStatus::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Privy::EvmWalletActionStepStatus::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
