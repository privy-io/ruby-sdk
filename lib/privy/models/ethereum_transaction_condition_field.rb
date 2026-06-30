# frozen_string_literal: true

module Privy
  module Models
    # Ethereum transaction-level fields that can be referenced in a policy condition.
    module EthereumTransactionConditionField
      extend Privy::Internal::Type::Enum

      TO = :to
      VALUE = :value
      CHAIN_ID = :chain_id

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
