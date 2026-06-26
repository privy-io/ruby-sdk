# frozen_string_literal: true

module Privy
  module Models
    # Instructs the client on how to handle tokens received from a session response.
    module ClientSessionUpdateAction
      extend Privy::Internal::Type::Enum

      SET = :set
      IGNORE = :ignore
      CLEAR = :clear

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
