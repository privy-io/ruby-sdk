# frozen_string_literal: true

module Privy
  module Models
    # The action to take when a policy rule matches.
    module PolicyAction
      extend Privy::Internal::Type::Enum

      ALLOW = :ALLOW
      DENY = :DENY

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
