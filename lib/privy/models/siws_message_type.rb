# frozen_string_literal: true

module Privy
  module Models
    # The type of SIWS message being signed.
    module SiwsMessageType
      extend Privy::Internal::Type::Enum

      TRANSACTION = :transaction
      PLAIN = :plain
      OFFCHAIN_MESSAGE = :"offchain-message"

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
