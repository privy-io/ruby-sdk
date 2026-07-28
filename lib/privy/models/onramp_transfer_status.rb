# frozen_string_literal: true

module Privy
  module Models
    # Status of an onramp or offramp transfer.
    module OnrampTransferStatus
      extend Privy::Internal::Type::Enum

      AWAITING_FUNDS = :awaiting_funds
      IN_REVIEW = :in_review
      FUNDS_RECEIVED = :funds_received
      PAYMENT_SUBMITTED = :payment_submitted
      PAYMENT_PROCESSED = :payment_processed
      CANCELED = :canceled
      ERROR = :error
      UNDELIVERABLE = :undeliverable
      RETURNED = :returned
      REFUNDED = :refunded

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
