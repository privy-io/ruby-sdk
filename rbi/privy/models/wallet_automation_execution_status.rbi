# typed: strong

module Privy
  module Models
    # Execution lifecycle status.
    module WalletAutomationExecutionStatus
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::WalletAutomationExecutionStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PENDING =
        T.let(:pending, Privy::WalletAutomationExecutionStatus::TaggedSymbol)
      TRIGGERED =
        T.let(:triggered, Privy::WalletAutomationExecutionStatus::TaggedSymbol)
      COMPLETED =
        T.let(:completed, Privy::WalletAutomationExecutionStatus::TaggedSymbol)
      FAILED =
        T.let(:failed, Privy::WalletAutomationExecutionStatus::TaggedSymbol)
      SKIPPED =
        T.let(:skipped, Privy::WalletAutomationExecutionStatus::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Privy::WalletAutomationExecutionStatus::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
