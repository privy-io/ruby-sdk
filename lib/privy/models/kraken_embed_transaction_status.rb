# frozen_string_literal: true

module Privy
  module Models
    # Lifecycle status of a portfolio transaction.
    module KrakenEmbedTransactionStatus
      extend Privy::Internal::Type::Enum

      UNSPECIFIED = :unspecified
      IN_PROGRESS = :in_progress
      SUCCESSFUL = :successful
      FAILED = :failed

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
