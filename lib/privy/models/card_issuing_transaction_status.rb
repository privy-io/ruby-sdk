# frozen_string_literal: true

module Privy
  module Models
    # Status for a card issuing transaction.
    module CardIssuingTransactionStatus
      extend Privy::Internal::Type::Enum

      PENDING = :pending
      COMPLETED = :completed
      DECLINED = :declined
      DISPUTED = :disputed
      REFUNDED = :refunded

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
