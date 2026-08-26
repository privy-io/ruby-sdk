# frozen_string_literal: true

module Privy
  module Models
    # The type of operation that incurred a usage charge.
    module UsageSourceType
      extend Privy::Internal::Type::Enum

      WALLET_ACTION_TRANSFER = :"wallet-action-transfer"
      WALLET_ACTION_SWAP = :"wallet-action-swap"
      RPC = :rpc

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
