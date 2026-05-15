# frozen_string_literal: true

module Privy
  module Models
    # Normalized fiat onramp transaction status.
    module FiatOnrampTransactionStatus
      extend Privy::Internal::Type::Enum

      PENDING = :pending
      PROCESSING = :processing
      COMPLETED = :completed
      FAILED = :failed
      CANCELLED = :cancelled
      REFUNDED = :refunded
      UNKNOWN = :unknown

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
