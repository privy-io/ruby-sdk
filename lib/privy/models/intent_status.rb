# frozen_string_literal: true

module Privy
  module Models
    # Current status of an intent.
    module IntentStatus
      extend Privy::Internal::Type::Enum

      PENDING = :pending
      PROCESSING = :processing
      EXECUTED = :executed
      FAILED = :failed
      EXPIRED = :expired
      REJECTED = :rejected
      DISMISSED = :dismissed

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
