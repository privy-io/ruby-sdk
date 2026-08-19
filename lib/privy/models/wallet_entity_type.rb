# frozen_string_literal: true

module Privy
  module Models
    # The type of entity a wallet is attributed to.
    module WalletEntityType
      extend Privy::Internal::Type::Enum

      USER = :user
      ORGANIZATION = :organization

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
