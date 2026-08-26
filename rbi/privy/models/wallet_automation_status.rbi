# typed: strong

module Privy
  module Models
    # Automation lifecycle state: 'enabled' = running, 'disabled' = not running.
    module WalletAutomationStatus
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::WalletAutomationStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ENABLED = T.let(:enabled, Privy::WalletAutomationStatus::TaggedSymbol)
      DISABLED = T.let(:disabled, Privy::WalletAutomationStatus::TaggedSymbol)

      sig do
        override.returns(T::Array[Privy::WalletAutomationStatus::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
