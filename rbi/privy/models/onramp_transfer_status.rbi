# typed: strong

module Privy
  module Models
    # Status of an onramp or offramp transfer.
    module OnrampTransferStatus
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::OnrampTransferStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      AWAITING_FUNDS =
        T.let(:awaiting_funds, Privy::OnrampTransferStatus::TaggedSymbol)
      IN_REVIEW = T.let(:in_review, Privy::OnrampTransferStatus::TaggedSymbol)
      FUNDS_RECEIVED =
        T.let(:funds_received, Privy::OnrampTransferStatus::TaggedSymbol)
      PAYMENT_SUBMITTED =
        T.let(:payment_submitted, Privy::OnrampTransferStatus::TaggedSymbol)
      PAYMENT_PROCESSED =
        T.let(:payment_processed, Privy::OnrampTransferStatus::TaggedSymbol)
      CANCELED = T.let(:canceled, Privy::OnrampTransferStatus::TaggedSymbol)
      ERROR = T.let(:error, Privy::OnrampTransferStatus::TaggedSymbol)
      UNDELIVERABLE =
        T.let(:undeliverable, Privy::OnrampTransferStatus::TaggedSymbol)
      RETURNED = T.let(:returned, Privy::OnrampTransferStatus::TaggedSymbol)
      REFUNDED = T.let(:refunded, Privy::OnrampTransferStatus::TaggedSymbol)

      sig do
        override.returns(T::Array[Privy::OnrampTransferStatus::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
