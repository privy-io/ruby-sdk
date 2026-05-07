# frozen_string_literal: true

module Privy
  module Models
    # Type of intent.
    module IntentType
      extend Privy::Internal::Type::Enum

      KEY_QUORUM = :KEY_QUORUM
      POLICY = :POLICY
      RULE = :RULE
      RPC = :RPC
      TRANSFER = :TRANSFER
      WALLET = :WALLET

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
