# typed: strong

module Privy
  module Models
    # Normalized fiat onramp transaction status.
    module FiatOnrampTransactionStatus
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::FiatOnrampTransactionStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PENDING =
        T.let(:pending, Privy::FiatOnrampTransactionStatus::TaggedSymbol)
      PROCESSING =
        T.let(:processing, Privy::FiatOnrampTransactionStatus::TaggedSymbol)
      COMPLETED =
        T.let(:completed, Privy::FiatOnrampTransactionStatus::TaggedSymbol)
      FAILED = T.let(:failed, Privy::FiatOnrampTransactionStatus::TaggedSymbol)
      CANCELLED =
        T.let(:cancelled, Privy::FiatOnrampTransactionStatus::TaggedSymbol)
      REFUNDED =
        T.let(:refunded, Privy::FiatOnrampTransactionStatus::TaggedSymbol)
      UNKNOWN =
        T.let(:unknown, Privy::FiatOnrampTransactionStatus::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Privy::FiatOnrampTransactionStatus::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
