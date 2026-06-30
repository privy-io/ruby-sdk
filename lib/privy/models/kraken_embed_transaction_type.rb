# frozen_string_literal: true

module Privy
  module Models
    # Type of portfolio transaction in the transaction history.
    module KrakenEmbedTransactionType
      extend Privy::Internal::Type::Enum

      SIMPLE_ORDER = :simple_order
      SIMPLE_ORDER_FAILED = :simple_order_failed
      EARN_REWARD = :earn_reward

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
