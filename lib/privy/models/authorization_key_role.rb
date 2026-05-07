# frozen_string_literal: true

module Privy
  module Models
    # The role of an authorization key, controlling what actions it can authorize on a
    # wallet.
    module AuthorizationKeyRole
      extend Privy::Internal::Type::Enum

      ROOT = :root
      MANAGER = :manager
      DELEGATED_ACTIONS = :"delegated-actions"

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
