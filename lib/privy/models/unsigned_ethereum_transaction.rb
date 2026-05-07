# frozen_string_literal: true

module Privy
  module Models
    # An unsigned Ethereum transaction object. Supports standard EVM transaction types
    # (0, 1, 2, 4) and Tempo transactions (type 118).
    module UnsignedEthereumTransaction
      extend Privy::Internal::Type::Union

      # An unsigned standard Ethereum transaction object. Supports EVM transaction types 0, 1, 2, and 4.
      variant -> { Privy::UnsignedStandardEthereumTransaction }

      # An unsigned Tempo transaction (type 118) with batched calls.
      variant -> { Privy::UnsignedTempoTransaction }

      # @!method self.variants
      #   @return [Array(Privy::Models::UnsignedStandardEthereumTransaction, Privy::Models::UnsignedTempoTransaction)]
    end
  end
end
