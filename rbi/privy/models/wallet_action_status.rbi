# typed: strong

module Privy
  module Models
    # Status of a wallet action.
    module WalletActionStatus
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::WalletActionStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PENDING = T.let(:pending, Privy::WalletActionStatus::TaggedSymbol)
      SUCCEEDED = T.let(:succeeded, Privy::WalletActionStatus::TaggedSymbol)
      REJECTED = T.let(:rejected, Privy::WalletActionStatus::TaggedSymbol)
      FAILED = T.let(:failed, Privy::WalletActionStatus::TaggedSymbol)

      sig do
        override.returns(T::Array[Privy::WalletActionStatus::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
