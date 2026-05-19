# frozen_string_literal: true

module Privy
  module Models
    # Tempo (type 118) transaction-level fields that can be referenced in a policy
    # condition.
    module TempoTransactionConditionField
      extend Privy::Internal::Type::Enum

      FEE_TOKEN = :fee_token
      FEE_PAYER_SIGNATURE = :fee_payer_signature
      NONCE_KEY = :nonce_key
      VALID_BEFORE = :valid_before
      VALID_AFTER = :valid_after

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
