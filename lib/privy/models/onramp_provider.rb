# frozen_string_literal: true

module Privy
  module Models
    # Valid set of onramp providers
    module OnrampProvider
      extend Privy::Internal::Type::Enum

      BRIDGE = :bridge
      BRIDGE_SANDBOX = :"bridge-sandbox"

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
