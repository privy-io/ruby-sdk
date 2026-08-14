# frozen_string_literal: true

module Privy
  module Models
    # Supported fiat orchestration providers.
    module OrchestrationProvider
      extend Privy::Internal::Type::Enum

      BRIDGE = :bridge

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
